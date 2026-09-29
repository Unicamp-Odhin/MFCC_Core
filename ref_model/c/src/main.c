#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <math.h>
#include <time.h>
#include <errno.h>
#include <limits.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <ctype.h>

#include "mfcc/mfcc.h"

#include "wav.h"

#ifdef __x86_64__
    #include <x86intrin.h>
#endif

#define CONFIG_FILE "config.txt"

int ensure_dir(const char *path) {
    struct stat st;

    if (stat(path, &st) == -1) {
        if (mkdir(path, 0755) != 0) {
            perror(path);
            return -1;
        }
    }
    return 0;
}

int create_dirs(void) {
    char *c_dir = getenv("REF_C_DIR");
    char filepath[512];
    snprintf(filepath, sizeof(filepath), "%s/dumps", c_dir);
    if (ensure_dir(filepath) != 0) return -1;
    snprintf(filepath, sizeof(filepath), "%s/dumps/2_frames", c_dir);
    if (ensure_dir(filepath) != 0) return -1;
    snprintf(filepath, sizeof(filepath), "%s/dumps/3_hamming_frames", c_dir);
    if (ensure_dir(filepath) != 0) return -1;
    snprintf(filepath, sizeof(filepath), "%s/dumps/4_power_spectrum", c_dir);
    if (ensure_dir(filepath) != 0) return -1;
    snprintf(filepath, sizeof(filepath), "%s/dumps/5_energies", c_dir);
    if (ensure_dir(filepath) != 0) return -1;
    snprintf(filepath, sizeof(filepath), "%s/dumps/6_ceps", c_dir);
    if (ensure_dir(filepath) != 0) return -1;

    char *tests_dir = getenv("TESTS_DIR");
    snprintf(filepath, sizeof(filepath), "%s/ref_vectors", tests_dir);
    if (ensure_dir(filepath) != 0) return -1;
    snprintf(filepath, sizeof(filepath), "%s/ref_vectors/2_frames", tests_dir);
    if (ensure_dir(filepath) != 0) return -1;
    snprintf(filepath, sizeof(filepath), "%s/ref_vectors/3_hamming_frames", tests_dir);
    if (ensure_dir(filepath) != 0) return -1;
    snprintf(filepath, sizeof(filepath), "%s/ref_vectors/4_power_spectrum", tests_dir);
    if (ensure_dir(filepath) != 0) return -1;
    snprintf(filepath, sizeof(filepath), "%s/ref_vectors/5_energies", tests_dir);
    if (ensure_dir(filepath) != 0) return -1;
    snprintf(filepath, sizeof(filepath), "%s/ref_vectors/6_ceps", tests_dir);
    if (ensure_dir(filepath) != 0) return -1;
    return 0;
}

void dump_hex(const char *file_name, const void *buffer, int size, size_t element_size){
    FILE *fp = fopen(file_name, "w");
    if (!fp) {
        perror("fopen");
        return;
    }

    int width = element_size * 2;

    for (int i = 0; i < size; i++) {
        uint64_t value = 0;

        switch (element_size) {
            case sizeof(int16_t):
                value = ((const uint16_t *)buffer)[i];
                break;
            case sizeof(int32_t):
                value = ((const uint32_t *)buffer)[i];
                break;
            case sizeof(int64_t):
                value = ((const uint64_t *)buffer)[i];
                break;
            default:
                fprintf(stderr, "Unsupported element size: %zu\n", element_size);
                fclose(fp);
                return;
        }
        fprintf(fp, "%0*llx\n", width, (unsigned long long)value);
    }
    fclose(fp);
}

void dump_fixed_point_to_float(const char *file_name, const void *buffer, int size, int F, size_t element_size){
    float SCALE = (float)(1ULL << F);
    FILE *fp = fopen(file_name, "w");
    if (!fp) {
        perror("fopen");
        return;
    }

    for (int i = 0; i < size; i++) {
        int64_t value;

        if (element_size == sizeof(int32_t)) {
            value = ((const int32_t *)buffer)[i];
        } else if (element_size == sizeof(int64_t)) {
            value = ((const int64_t *)buffer)[i];
        } else {
            fclose(fp);
            return;
        }
        fprintf(fp, "%f\n", (float)value / SCALE);
    }

    fclose(fp);
}

unsigned long long get_cycles() {
#ifdef __x86_64__
    return __rdtsc();
#elif defined(__arm__) || defined(__aarch64__)
    struct timespec ts;
    clock_gettime(CLOCK_MONOTONIC, &ts);
    return ts.tv_sec * 1000000000LL + ts.tv_nsec;
#else
    return 0;
#endif
}

static void trim_line(char *line) {
    char *comment = strchr(line, '#');
    if (comment) *comment = '\0';
    char *end = line + strlen(line) - 1;
    while (end >= line && isspace(*end)) end--;
    *(end + 1) = '\0';
    char *start = line;
    while (*start && isspace(*start)) start++;
    if (start != line) memmove(line, start, strlen(start) + 1);
}

int load_config(const char *dir, mfcc_config_t *cfg) {
    char path[512];
    snprintf(path, sizeof(path), "%s/%s", dir, CONFIG_FILE);
    FILE *f = fopen(path, "r");
    if (!f) {
        printf("Arquivo de configuração não encontrado, usando defaults.\n");
        cfg->F_PRE = 12;
        cfg->F_HAMMING = 12;
        cfg->F_FFT = 12;
        cfg->F_MEL = 12;
        cfg->F_DCT = 12;
        cfg->TRUNCATE_PRE = 0;
        cfg->TRUNCATE_HAMMING = 0;
        cfg->TRUNCATE_FFT = 0;
        cfg->TRUNCATE_MEL = 0;
        cfg->TRUNCATE_DCT = 0;
        return 0;
    }

    char line[256];
    while (fgets(line, sizeof(line), f)) {
        trim_line(line);
        if (strlen(line) == 0) continue;

        char key[64], value[64];
        if (sscanf(line, "%63[^=]=%63s", key, value) != 2) {
            fprintf(stderr, "Linha ignorada (formato inválido): %s\n", line);
            continue;
        }

        int val = atoi(value);

        if (strcmp(key, "F_PRE") == 0) cfg->F_PRE = val;
        else if (strcmp(key, "F_HAMMING") == 0) cfg->F_HAMMING = val;
        else if (strcmp(key, "F_FFT") == 0) cfg->F_FFT = val;
        else if (strcmp(key, "F_MEL") == 0) cfg->F_MEL = val;
        else if (strcmp(key, "F_DCT") == 0) cfg->F_DCT = val;
        else if (strcmp(key, "TRUNCATE_PRE") == 0) cfg->TRUNCATE_PRE = val;
        else if (strcmp(key, "TRUNCATE_HAMMING") == 0) cfg->TRUNCATE_HAMMING = val;
        else if (strcmp(key, "TRUNCATE_FFT") == 0) cfg->TRUNCATE_FFT = val;
        else if (strcmp(key, "TRUNCATE_MEL") == 0) cfg->TRUNCATE_MEL = val;
        else if (strcmp(key, "TRUNCATE_DCT") == 0) cfg->TRUNCATE_DCT = val;
        else {
            fprintf(stderr, "Chave desconhecida: %s\n", key);
        }
    }
    fclose(f);
    return 1;
}

int main(int argc, char *argv[]) {
    clock_t start_time = clock();
    unsigned long long start_cycles = get_cycles();

    char *c_dir = getenv("REF_C_DIR");
    char *tests_dir = getenv("TESTS_DIR");
    char *tables_dir = getenv("TABLES_DIR");

    mfcc_config_t cfg;
    load_config(c_dir, &cfg);

    printf("Configurações usadas:\n");
    printf("F_PRE=%d, F_HAMMING=%d, F_FFT=%d, F_MEL=%d, F_DCT=%d\n",
           cfg.F_PRE, cfg.F_HAMMING, cfg.F_FFT, cfg.F_MEL, cfg.F_DCT);
    printf("TRUNCATE_PRE=%d, HAMMING=%d, FFT=%d, MEL=%d, DCT=%d\n",
           cfg.TRUNCATE_PRE, cfg.TRUNCATE_HAMMING, cfg.TRUNCATE_FFT,
           cfg.TRUNCATE_MEL, cfg.TRUNCATE_DCT);

    int16_t *samples = NULL;
    WavHeader *header = open_wav_file(argv[1], &samples);

    if (!header) {
        fprintf(stderr, "Failed to open WAV file: %s\n", argv[1]);
        return 1;
    }

    if (create_dirs()) return -1;

    char filepath[512];

    int sample_rate = header->sampleRate;
    int num_samples = header->subchunk2Size / sizeof(uint16_t);

    #ifdef CONFIG_LOG
    snprintf(filepath, sizeof(filepath), "%s/dumps/0_samples_dump.hex", c_dir);
    dump_hex(filepath, samples, num_samples, sizeof(int16_t));

    snprintf(filepath, sizeof(filepath), "%s/ref_vectors/0_samples_dump.hex", tests_dir);
    dump_hex(filepath, samples, num_samples, sizeof(int16_t));
    #endif


    mfcc_result_t result = {0};
    int ret = mfcc_compute(samples, num_samples, sample_rate, &cfg, &result);

    if (ret != 0) {
        fprintf(stderr, "MFCC computation failed\n");
        free(samples);
        free(header);
        return 1;
    }

    printf("MFCC computed successfully\n"
           "Frames: %d\n"
           "Coefficients: %d\n",
           result.num_frames, result.num_ceps);

    #ifdef CONFIG_LOG
    snprintf(filepath, sizeof(filepath), "%s/ref_vectors/1_pre_emphasis.hex", tests_dir);
    dump_hex(filepath, result.pre_emphasis, result.num_samples, sizeof(int64_t));

    snprintf(filepath, sizeof(filepath), "%s/dumps/1_pre_emphasis.hex", c_dir);
    dump_fixed_point_to_float(filepath, result.pre_emphasis, result.num_samples, cfg.F_PRE, sizeof(int64_t));

    for (int i = 0; i < result.num_frames; i++) {
        snprintf(filepath, sizeof(filepath), "%s/ref_vectors/2_frames/%04d.hex", tests_dir, i);
        dump_hex(filepath, result.frames[i], result.frame_size, sizeof(int64_t));

        snprintf(filepath, sizeof(filepath), "%s/dumps/2_frames/%04d.hex", c_dir, i);
        dump_fixed_point_to_float(filepath, result.frames[i], result.frame_size, cfg.F_PRE, sizeof(int64_t));

        snprintf(filepath, sizeof(filepath), "%s/ref_vectors/3_hamming_frames/%04d.hex", tests_dir, i);
        dump_hex(filepath, result.hamming_frames[i], result.frame_size, sizeof(int64_t));

        snprintf(filepath, sizeof(filepath), "%s/dumps/3_hamming_frames/%04d.hex", c_dir, i);
        dump_fixed_point_to_float(filepath, result.hamming_frames[i], result.frame_size, cfg.F_HAMMING, sizeof(int64_t));

        snprintf(filepath, sizeof(filepath), "%s/ref_vectors/4_power_spectrum/%04d.hex", tests_dir, i);
        dump_hex(filepath, result.power_spectrum[i], MFCC_NFFT/2 + 1, sizeof(int64_t));

        snprintf(filepath, sizeof(filepath), "%s/dumps/4_power_spectrum/%04d.hex", c_dir, i);
        dump_fixed_point_to_float(filepath, result.power_spectrum[i], MFCC_NFFT/2 + 1, cfg.F_FFT, sizeof(int64_t));

        snprintf(filepath, sizeof(filepath), "%s/ref_vectors/5_energies/%04d.hex", tests_dir, i);
        dump_hex(filepath, result.energies[i], NUM_FILTERS, sizeof(int32_t));

        snprintf(filepath, sizeof(filepath), "%s/dumps/5_energies/%04d.hex", c_dir, i);
        dump_fixed_point_to_float(filepath, result.energies[i], NUM_FILTERS, 16, sizeof(int32_t));

        snprintf(filepath, sizeof(filepath), "%s/ref_vectors/6_ceps/%04d.hex", tests_dir, i);
        dump_hex(filepath, result.coefficients[i], MFCC_NUM_CEPS, sizeof(int32_t));

        snprintf(filepath, sizeof(filepath), "%s/dumps/6_ceps/%04d.hex", c_dir, i);
        dump_fixed_point_to_float(filepath, result.coefficients[i], MFCC_NUM_CEPS, cfg.F_DCT, sizeof(int32_t));
    }
    #endif

    #ifdef CONFIG_CREATE_DATABANK
    snprintf(filepath, sizeof(filepath), "%s/hamming_window.hex", tables_dir);
    dump_hex(filepath, result.window, result.frame_size, sizeof(int32_t));

    snprintf(filepath, sizeof(filepath), "%s/twiddles.hex", tables_dir);
    dump_hex(filepath, result.twiddles, MFCC_NFFT, sizeof(complex_t));
    #endif

    clock_t end_time = clock();
    double time_spent = (double)(end_time - start_time) / CLOCKS_PER_SEC;
    printf("Execution Time (us): %.2f\n", time_spent * 1e6);
    unsigned long long end_cycles = get_cycles();
    printf("CPU Cycles: %llu\n", end_cycles - start_cycles);

    mfcc_free_result(&result);

    free(samples);
    free(header);

    return 0;
}