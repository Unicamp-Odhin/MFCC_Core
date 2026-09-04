#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <math.h>
#include "wav.h"
#include "process.h"
#include "fft_fp.h"
#include "mel.h"
#include "dct.h"
#include <time.h>
#include <errno.h>
#include <limits.h>
#ifdef __x86_64__
	#include <x86intrin.h>
#endif

#include <sys/stat.h>
#include <sys/types.h>


#define FRAME_SIZE 0.025 // seconds
#define FRAME_STEP 0.01 // seconds

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
    filepath[512];
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

void dump_fixed_point_to_int(const char *file_name, int32_t *buffer, int size, int F) {
    FILE *fp = fopen(file_name, "w");
    if (!fp) {
        perror("fopen");
        return;
    }
    for (int i = 0; i < size; i++) {
        fprintf(fp, "%x\n", buffer[i] >> F);
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

int parse_int(const char *str, const char *name){
    char *endptr;
    long value;
    errno = 0;
    endptr = NULL;

    value = strtol(str, &endptr, 10);

    if (errno == ERANGE || value < INT_MIN || value > INT_MAX) {
        fprintf(stderr, "Erro: %s deve ser um inteiro válido: '%s'\n", name, str);
        exit(EXIT_FAILURE);
    }

    if (endptr == str || *endptr != '\0') {
        fprintf(stderr, "Erro: %s deve ser um inteiro válido: '%s'\n", name, str);
        exit(EXIT_FAILURE);
    }

    return (int)value;
}

int main(int argc, char *argv[]) {
    clock_t start_time = clock();
    unsigned long long start_cycles = get_cycles();

    if (argc != 7) {
        fprintf(stderr, "Usage: %s <filename>.wav F_PRE_EMPHASIS F_HAMMING F_FFT F_MEL F_DCT\n", argv[0]);
        return 1;
    }

    int F_PRE_EMPHASIS = parse_int(argv[2], "F_PRE_EMPHASIS");
    int F_HAMMING = parse_int(argv[3], "F_HAMMING");
    int F_FFT = parse_int(argv[4], "F_FFT");
    int F_MEL = parse_int(argv[5], "F_MEL");
    int F_DCT = parse_int(argv[6], "F_DCT");

    // Caso a flag esteja ativa é removido a parte fracionária após o processamento
    int TRUNCATE_AFTER_PRE_EMPHASIS = 0;
    int TRUNCATE_AFTER_HAMMING = 0;
    int TRUNCATE_AFTER_FFT = 0;
    int TRUNCATE_AFTER_MEL = 0;
    int TRUNCATE_AFTER_DCT = 1;

    int16_t *samples = NULL;
    WavHeader *header = open_wav_file(argv[1], &samples);
    
    if (!header) {
        fprintf(stderr, "Failed to open WAV file: %s\n", argv[1]);
        return 1;
    }

    if (create_dirs()) return -1;
    char *c_dir = getenv("REF_C_DIR");
    char filepath[512];
    char *tests_dir = getenv("TESTS_DIR");
    char *samples_dir = getenv("SAMPLES_DIR");
    char *tables_dir = getenv("TABLES_DIR");
    

    // TODO: Pode haver inconsistência no cálculo de frame_step devido a arredondamentos.
    // Isso pode levar à geração de frames levemente diferentes ao longo do tempo,
    // acumulando um erro perceptível no resultado final.

    int sample_rate = header->sampleRate;
    int frame_size  = (int)(sample_rate * FRAME_SIZE);
    int frame_step  = (int)(sample_rate * FRAME_STEP);
    int num_samples = header->subchunk2Size / sizeof(uint16_t);
    int num_frames = (int)((double)(num_samples - frame_size) / frame_step) + 1;
    
    #ifdef CONFIG_VERBOSE 
    printf("Número total de frames: %d\n", num_frames);
    printf("Sample rate: %d Hz\n", sample_rate);
    printf("Frame size: %d samples\n", frame_size);
    printf("Frame step: %d samples\n", frame_step);
    printf("Number of samples: %d\n", num_samples);
    #endif
    
    
    #ifdef CONFIG_LOG 
    snprintf(filepath, sizeof(filepath), "%s/dumps/0_samples_dump.hex", c_dir);
    dump_hex(filepath, samples, num_samples, sizeof(int16_t));
    
    snprintf(filepath, sizeof(filepath), "%s/dump.hex", samples_dir);
    dump_hex(filepath, samples, num_samples, sizeof(int16_t));
    #endif
    
    
    //PRIMEIRA ETAPA "pre enfase"
    int64_t *samples_64bit = malloc(sizeof(int64_t) * num_samples);
    pre_emphasis(samples, header->subchunk2Size / sizeof(int16_t), samples_64bit, F_PRE_EMPHASIS);

    // truc
    if (TRUNCATE_AFTER_PRE_EMPHASIS) {
    int64_t mask = ~((1LL << F_PRE_EMPHASIS) - 1);  // bits fracionários = 0
    for (int i = 0; i < num_samples; i++) {
        samples_64bit[i] &= mask;
    }
}

    #ifdef CONFIG_LOG 
        snprintf(filepath, sizeof(filepath), "%s/ref_vectors/1_pre_emphasis.hex", tests_dir);
        dump_hex(filepath, samples_64bit, num_samples, sizeof(int64_t));

        snprintf(filepath, sizeof(filepath), "%s/dumps/1_pre_emphasis.hex", c_dir);
        dump_fixed_point_to_float(filepath, samples_64bit, num_samples, F_PRE_EMPHASIS, sizeof(int64_t));
    #endif

    // VETORES
    int64_t *power_spectrum = (int64_t*)malloc(NFFT * sizeof(int64_t));
    int32_t *energies = (int32_t*)malloc(NUM_FILTERS * sizeof(int32_t)); 
    int32_t *ceps = (int32_t*)malloc(NUM_CEPS * sizeof(int32_t)); 

    // TABELAS
    int32_t* window = malloc(frame_size * sizeof(int32_t*)); ;
    generate_hamming_window(window, frame_size, F_HAMMING);

    complex_t* twiddles = (complex_t*)malloc((NFFT / 2) * sizeof(complex_t));
    generate_twiddles(twiddles, NFFT, F_FFT);  

    int32_t **filterbank = malloc(NUM_FILTERS * sizeof(int32_t*));
    int16_t max_width_mel = create_op_filterbank(filterbank, sample_rate, F_MEL);

    init_cos_lut(F_DCT);
    
    // PRECISAO
    int ENERGIES_WIDTH_F = 13;

    //SEGUNDA ETAPA "enquadramento"
    int64_t **frames = frame_signal_int(samples_64bit, num_samples, frame_size, frame_step, &num_frames);

    for (int i = 0; i < num_frames; i++) {
        //TERCEIRA ETAPA "janelamento"
        hamming_window_fixed(frames[i], window, frame_size, F_HAMMING, F_PRE_EMPHASIS);
        if (TRUNCATE_AFTER_HAMMING){
            int64_t mask = ~((1LL << F_HAMMING) - 1);
            for (int j = 0; j < frame_size; j++) {
                frames[i][j] &= mask;
            }
        }

        //QUARTA ETAPA FFT
        power_spectrum[0] = 0; // DC é zero
        fft_real_power(frames[i], frame_size, power_spectrum, twiddles, F_FFT, F_HAMMING);
        if (TRUNCATE_AFTER_FFT){
            int64_t mask = ~((1LL << F_FFT) - 1);
            for (int j = 0; j < NFFT; j++) {
                power_spectrum[j] &= mask;
            }
        }

        //QUINTA ETAPA MEL
        apply_op_filterbank(power_spectrum, energies, sample_rate, filterbank, F_MEL, ENERGIES_WIDTH_F, F_FFT);
        if (TRUNCATE_AFTER_MEL){
            int64_t mask = ~((1LL << ENERGIES_WIDTH_F) - 1);
            for (int j = 0; j < NUM_FILTERS; j++) {
                energies[j] &= mask;
            }
        }

        //SEXTA ETAPA DCT
        dct_fixed(energies, NUM_FILTERS, ceps, ENERGIES_WIDTH_F, F_DCT);
        if (TRUNCATE_AFTER_DCT){
            int64_t mask = ~((1LL << F_DCT) - 1);
            for (int j = 0; j < NUM_CEPS; j++) {
                ceps[j] &= mask;
            }
        }
        
        #ifdef CONFIG_LOG
        // log enquadramento
        snprintf(filepath, sizeof(filepath), "%s/ref_vectors/2_frames/%04d.hex", tests_dir, i);
        dump_hex(filepath, frames[i], frame_size, sizeof(int64_t));

        snprintf(filepath, sizeof(filepath), "%s/dumps/2_frames/%04d.hex", c_dir, i);
        dump_fixed_point_to_float(filepath, frames[i], frame_size, F_PRE_EMPHASIS, sizeof(int64_t));

        //log hamming
        snprintf(filepath, sizeof(filepath), "%s/ref_vectors/3_hamming_frames/%04d.hex", tests_dir, i);
        dump_hex(filepath, frames[i], frame_size, sizeof(int64_t));

        snprintf(filepath, sizeof(filepath), "%s/dumps/3_hamming_frames/%04d.hex", c_dir, i);
        dump_fixed_point_to_float(filepath, frames[i], frame_size, F_HAMMING, sizeof(int64_t));

        //log fft
        snprintf(filepath, sizeof(filepath), "%s/ref_vectors/4_power_spectrum/%04d.hex", tests_dir, i);
        dump_hex(filepath, power_spectrum,  NFFT/2 + 1, sizeof(int64_t));

        snprintf(filepath, sizeof(filepath), "%s/dumps/4_power_spectrum/%04d.hex", c_dir, i);
        dump_fixed_point_to_float(filepath, power_spectrum, NFFT/2 + 1, F_FFT, sizeof(int64_t));

        //log mel
        snprintf(filepath, sizeof(filepath), "%s/ref_vectors/5_energies/%04d.hex", tests_dir, i);
        dump_hex(filepath, energies,  NUM_FILTERS, sizeof(int32_t));
        
        snprintf(filepath, sizeof(filepath), "%s/dumps/5_energies/%04d.hex", c_dir, i);
        dump_fixed_point_to_float(filepath, energies, NUM_FILTERS, ENERGIES_WIDTH_F, sizeof(int32_t));

        //log dct
        snprintf(filepath, sizeof(filepath), "%s/ref_vectors/6_ceps/%04d.hex", tests_dir, i);
        dump_hex(filepath, ceps,  NUM_CEPS, sizeof(int32_t));
        
        snprintf(filepath, sizeof(filepath), "%s/dumps/6_ceps/%04d.hex", c_dir, i);
        dump_fixed_point_to_float(filepath, ceps, NUM_CEPS, F_DCT, sizeof(int32_t));
        #endif
    }

    #ifdef CONFIG_CREATE_DATABANK
    snprintf(filepath, sizeof(filepath), "%s/hamming_window.hex", tables_dir);
    save_window_to_file(filepath, window, frame_size);

    snprintf(filepath, sizeof(filepath), "%s/twiddles.hex", tables_dir);
    save_twiddles_to_file(filepath, twiddles, NFFT);
    
    snprintf(filepath, sizeof(filepath), "%s/mel_table.hex", tables_dir);
    save_op_filterbank(filepath, filterbank, max_width_mel);
    
    snprintf(filepath, sizeof(filepath), "%s/cos_lut.hex", tables_dir);
    save_cos_lut(filepath);
    #endif  

    clock_t end_time = clock();
    double time_spent = (double)(end_time - start_time) / CLOCKS_PER_SEC;
    printf("Execution Time (us): %.2f\n", time_spent * 1e6);
    unsigned long long end_cycles = get_cycles();
    printf("CPU Cycles: %llu\n", end_cycles - start_cycles);

    free(frames);
    free(samples);
    free(header);

    // VETORES
    free(power_spectrum);
    free(energies);
    free(ceps);

    // TABELAS
    free(twiddles);
    free(filterbank);

    return 0;
}