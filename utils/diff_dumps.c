#define _GNU_SOURCE
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <math.h>
#include <dirent.h>
#include <sys/stat.h>
#include <pthread.h>
#include <errno.h>
#include <unistd.h>

/* -------------------------------------------------------------------------
   Configuration
   ------------------------------------------------------------------------- */
#define MAX_PATH 1024
#define MAX_LINE 256

/* Global threshold (default 0.0) */
static double threshold = 0.0;

/* Synchronization for bad file list */
static pthread_mutex_t list_mutex = PTHREAD_MUTEX_INITIALIZER;
static char **bad_files = NULL;
static int bad_count = 0;
static int bad_capacity = 0;

/* Thread pool */
typedef struct {
    char *path1;
    char *path2;
} file_task_t;

static file_task_t *task_queue = NULL;
static int task_count = 0;
static int task_capacity = 0;
static int next_task = 0;
static pthread_mutex_t queue_mutex = PTHREAD_MUTEX_INITIALIZER;
static pthread_cond_t queue_cond = PTHREAD_COND_INITIALIZER;
static int all_tasks_added = 0;
static int threads_running = 0;

/* -------------------------------------------------------------------------
   Helper functions
   ------------------------------------------------------------------------- */
static void add_bad_file(const char *path) {
    pthread_mutex_lock(&list_mutex);
    if (bad_count >= bad_capacity) {
        bad_capacity = bad_capacity ? bad_capacity * 2 : 16;
        bad_files = realloc(bad_files, bad_capacity * sizeof(char *));
        if (!bad_files) {
            perror("realloc");
            exit(1);
        }
    }
    bad_files[bad_count] = malloc(strlen(path) + 1);
    if (!bad_files[bad_count]) {
        perror("malloc");
        exit(1);
    }
    strcpy(bad_files[bad_count], path);
    bad_count++;
    pthread_mutex_unlock(&list_mutex);
}

static int is_regular_file(const char *path) {
    struct stat st;
    if (stat(path, &st) != 0) return 0;
    return S_ISREG(st.st_mode);
}

/* Recursively collect all regular files under root, storing their relative
   paths with respect to base_root in a list. Returns count. */
static int collect_files(const char *root, const char *base_root, char ***list, int *cap, int *count) {
    DIR *dir;
    struct dirent *entry;
    struct stat st;
    char full_path[MAX_PATH];

    if ((dir = opendir(root)) == NULL) {
        fprintf(stderr, "Cannot open directory: %s\n", root);
        return 0;
    }

    while ((entry = readdir(dir)) != NULL) {
        if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
            continue;

        snprintf(full_path, sizeof(full_path), "%s/%s", root, entry->d_name);
        if (stat(full_path, &st) != 0) continue;

        if (S_ISDIR(st.st_mode)) {
            collect_files(full_path, base_root, list, cap, count);
        } else if (S_ISREG(st.st_mode)) {
            if (*count >= *cap) {
                *cap = *cap ? *cap * 2 : 1024;
                *list = realloc(*list, (*cap) * sizeof(char *));
                if (!*list) {
                    perror("realloc");
                    exit(1);
                }
            }

            /* Build relative path by stripping the base_root prefix */
            const char *rel_start = full_path + strlen(base_root);
            if (*rel_start == '/') rel_start++;
            char *rel = malloc(strlen(rel_start) + 1);
            if (!rel) {
                perror("malloc");
                exit(1);
            }
            strcpy(rel, rel_start);
            (*list)[*count] = rel;
            (*count)++;
        }
    }
    closedir(dir);
    return *count;
}

/* Build full path from directory root and relative path */
static void build_full_path(char *dest, size_t size, const char *root, const char *rel) {
    snprintf(dest, size, "%s/%s", root, rel);
}

/* Parse a line: if it contains '.' treat as float, else as hex integer.
   Returns 1 on success, 0 on error. */
static int parse_line(const char *line, double *value) {
    char *endptr;
    while (isspace(*line)) line++;
    if (*line == '\0') return 0; /* empty line */

    if (strchr(line, '.')) {
        *value = strtod(line, &endptr);
        if (endptr == line) return 0;
    } else {
        long int val = strtol(line, &endptr, 16);
        if (endptr == line) return 0;
        *value = (double)val;
    }
    /* Check that we consumed the whole line (ignore trailing whitespace) */
    while (isspace(*endptr)) endptr++;
    if (*endptr != '\0') return 0;
    return 1;
}

/* Process one file pair. Returns 1 if any line exceeded threshold, 0 otherwise. */
static int process_file_pair(const char *path1, const char *path2) {
    FILE *f1 = fopen(path1, "r");
    if (!f1) {
        fprintf(stderr, "Cannot open %s: %s\n", path1, strerror(errno));
        return 0;
    }
    FILE *f2 = fopen(path2, "r");
    if (!f2) {
        fprintf(stderr, "Cannot open %s: %s\n", path2, strerror(errno));
        fclose(f1);
        return 0;
    }

    char line1[MAX_LINE], line2[MAX_LINE];
    int line_num = 0;
    int bad = 0;

    while (fgets(line1, sizeof(line1), f1) && fgets(line2, sizeof(line2), f2)) {
        line_num++;
        /* Remove trailing newline */
        line1[strcspn(line1, "\n")] = '\0';
        line2[strcspn(line2, "\n")] = '\0';

        double v1, v2;
        if (!parse_line(line1, &v1) || !parse_line(line2, &v2)) {
            fprintf(stderr, "Parse error in %s or %s at line %d\n", path1, path2, line_num);
            continue;
        }

        double diff = fabs(v1 - v2);
        double percent;
        if (v1 == 0.0) {
            if (v2 != 0.0)
                percent = HUGE_VAL;  /* infinite error */
            else
                percent = 0.0;
        } else {
            percent = (diff / fabs(v1)) * 100.0;
        }

        if (percent > threshold) {
            bad = 1;
            break;
        }
    }
    fclose(f1);
    fclose(f2);
    return bad;
}

/* Thread worker function */
static void *worker(void *arg) {
    (void)arg;
    while (1) {
        pthread_mutex_lock(&queue_mutex);
        while (next_task >= task_count && !all_tasks_added) {
            pthread_cond_wait(&queue_cond, &queue_mutex);
        }
        if (next_task >= task_count && all_tasks_added) {
            pthread_mutex_unlock(&queue_mutex);
            break;
        }
        file_task_t task = task_queue[next_task++];
        pthread_mutex_unlock(&queue_mutex);

        /* Process the file pair */
        if (process_file_pair(task.path1, task.path2)) {
            /* Bad file: store path of first file (or full path) */
            add_bad_file(task.path1);
        }
        /* Free allocated strings */
        free(task.path1);
        free(task.path2);
    }
    return NULL;
}

/* -------------------------------------------------------------------------
   Main
   ------------------------------------------------------------------------- */
int main(int argc, char *argv[]) {
    char *dir1 = NULL, *dir2 = NULL;
    int opt;
    /* Parse command line: -t threshold dir1 dir2 */
    while ((opt = getopt(argc, argv, "t:")) != -1) {
        switch (opt) {
            case 't':
                threshold = atof(optarg);
                break;
            default:
                fprintf(stderr, "Usage: %s [-t threshold] <dir1> <dir2>\n", argv[0]);
                exit(1);
        }
    }
    if (optind + 2 != argc) {
        fprintf(stderr, "Usage: %s [-t threshold] <dir1> <dir2>\n", argv[0]);
        exit(1);
    }
    dir1 = argv[optind];
    dir2 = argv[optind+1];

    /* Collect all files in dir1 with relative paths (based on dir1 itself) */
    char **rel_files = NULL;
    int file_cap = 0, file_cnt = 0;
    collect_files(dir1, dir1, &rel_files, &file_cap, &file_cnt);
    if (file_cnt == 0) {
        printf("No files found in %s\n", dir1);
        return 0;
    }

    /* Build task list: only include files that also exist in dir2 */
    task_capacity = file_cnt;
    task_queue = malloc(task_capacity * sizeof(file_task_t));
    if (!task_queue) {
        perror("malloc");
        exit(1);
    }

    for (int i = 0; i < file_cnt; i++) {
        char full1[MAX_PATH], full2[MAX_PATH];
        build_full_path(full1, sizeof(full1), dir1, rel_files[i]);
        build_full_path(full2, sizeof(full2), dir2, rel_files[i]);
        if (is_regular_file(full2)) {
            /* Store copies of the full paths */
            task_queue[task_count].path1 = malloc(strlen(full1)+1);
            task_queue[task_count].path2 = malloc(strlen(full2)+1);
            if (!task_queue[task_count].path1 || !task_queue[task_count].path2) {
                perror("malloc");
                exit(1);
            }
            strcpy(task_queue[task_count].path1, full1);
            strcpy(task_queue[task_count].path2, full2);
            task_count++;
        }
        free(rel_files[i]); /* free the relative path string */
    }
    free(rel_files);

    if (task_count == 0) {
        printf("No matching files found between %s and %s\n", dir1, dir2);
        free(task_queue);
        return 0;
    }

    /* Launch threads */
    int num_threads = sysconf(_SC_NPROCESSORS_ONLN);
    if (num_threads < 1) num_threads = 2;
    pthread_t *threads = malloc(num_threads * sizeof(pthread_t));
    if (!threads) {
        perror("malloc");
        exit(1);
    }

    threads_running = num_threads;
    for (int i = 0; i < num_threads; i++) {
        pthread_create(&threads[i], NULL, worker, NULL);
    }

    /* Signal that all tasks are queued */
    all_tasks_added = 1;
    pthread_cond_broadcast(&queue_cond);

    /* Wait for threads to finish */
    for (int i = 0; i < num_threads; i++) {
        pthread_join(threads[i], NULL);
    }

    /* Print results */
    printf("\nFiles with percent error > %.2f%%:\n", threshold);
    for (int i = 0; i < bad_count; i++) {
        printf("%s\n", bad_files[i]);
        free(bad_files[i]);
    }
    free(bad_files);
    free(task_queue);
    free(threads);
    pthread_mutex_destroy(&list_mutex);
    pthread_mutex_destroy(&queue_mutex);
    pthread_cond_destroy(&queue_cond);

    return 0;
}