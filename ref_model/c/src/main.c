#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <math.h>
#include "wav.h"
#include "process.h"
#include "q15_fft.h"
#include "q31_32.h"
#include "mel.h"
#include "dct.h"
#include <time.h>
#ifdef __x86_64__
	#include <x86intrin.h>
#endif

#include <sys/stat.h>
#include <sys/types.h>


#define ALPHA 31785
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
    if (ensure_dir("data") != 0) return -1;
    if (ensure_dir("tables_to_rtl") != 0) return -1;
    if (ensure_dir("dumps") != 0) return -1;
    if (ensure_dir("dumps") != 0) return -1;
    if (ensure_dir("dumps/plots") != 0) return -1;
    if (ensure_dir("dumps/2_frames") != 0) return -1;
    if (ensure_dir("dumps/3_hamming_frames") != 0) return -1;
    if (ensure_dir("dumps/4_power_spectrum") != 0) return -1;
    if (ensure_dir("dumps/5_energies") != 0) return -1;
    if (ensure_dir("dumps/6_ceps") != 0) return -1;
    
    return 0;
}
void dump_buffer_unsigned(const char *file_name, int32_t *buffer, int size) {
    FILE *fp = fopen(file_name, "w");
    if (!fp) {
        perror("fopen");
        return;
    }
    for (int i = 0; i < size; i++) {
        fprintf(fp, "%u\n", buffer[i]);
    }
    fclose(fp);
}

void dump_buffer_to_hex_16(const char *file_name, int16_t *buffer, int size) {
    FILE *fp = fopen(file_name, "w");
    if (!fp) {
        perror("fopen");
        return;
    }
    for (int i = 0; i < size; i++) {
        fprintf(fp, "%08x\n", buffer[i]);
    }
    fclose(fp);
}

void dump_buffer_to_hex_32(const char *file_name, int32_t *buffer, int size) {
    FILE *fp = fopen(file_name, "w");
    if (!fp) {
        perror("fopen");
        return;
    }
    for (int i = 0; i < size; i++) {
        fprintf(fp, "%08x\n", buffer[i]);
    }
    fclose(fp);
}

void dump_buffer_q15_to_float(const char *file_name, int32_t *buffer, int size) {
    FILE *fp = fopen(file_name, "w");
    if (!fp) {
        perror("fopen");
        return;
    }
    for (int i = 0; i < size; i++) {
        fprintf(fp, "%f\n", q15_16_to_float(buffer[i]));
    }
    fclose(fp);
}

void dump_buffer_q31_to_float(const char *file_name, int64_t *buffer, int size) {
    FILE *fp = fopen(file_name, "w");
    if (!fp) {
        perror("fopen");
        return;
    }
    for (int i = 0; i < size; i++) {
        fprintf(fp, "%f\n", q31_32_to_float(buffer[i]));
    }
    fclose(fp);
}

void dump_short_int_buffer_to_hex(const char *file_name, int32_t *buffer, int size) {
    FILE *fp = fopen(file_name, "w");
    if (!fp) {
        perror("fopen");
        return;
    }
    for (int i = 0; i < size; i++) {
        fprintf(fp, "%.6f\n", q15_16_to_float(buffer[i]) * (2 << 15));

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

int main(int argc, char *argv[]) {

    clock_t start_time = clock();
    unsigned long long start_cycles = get_cycles();


    if (argc < 2) {
        fprintf(stderr, "Usage: %s <filename>.wav\n", argv[0]);
        return 1;
    }

    int16_t *samples = NULL;
    WavHeader *header = open_wav_file(argv[1], &samples);

    if (!header) {
        fprintf(stderr, "Failed to open WAV file: %s\n", argv[1]);
        return 1;
    }

    if (create_dirs()) return -1;


    int sample_rate = header->sampleRate;
    int frame_size  = (int)ceil(sample_rate * FRAME_SIZE);
    int frame_step  = (int)ceil(sample_rate * FRAME_STEP);
    int num_samples = header->subchunk2Size / sizeof(uint16_t);
    int num_frames = (int)ceil((double)(num_samples - frame_size) / frame_step) + 1;
    int32_t *samples_32bit = malloc(sizeof(int32_t) * num_samples);

    #ifdef CONFIG_VERBOSE 
        printf("Número total de frames: %d\n", num_frames);
        printf("Sample rate: %d Hz\n", sample_rate);
        printf("Frame size: %d samples\n", frame_size);
        printf("Frame step: %d samples\n", frame_step);
        printf("Number of samples: %d\n", num_samples);
    #endif
    
    
    #ifdef CONFIG_LOG 
        dump_buffer_to_hex_16("dumps/0_samples_dump.hex", samples, num_samples);
    #endif

    
    //PRIMEIRA ETAPA "pre enfase"
    pre_emphasis(samples, header->subchunk2Size / sizeof(int16_t), ALPHA, samples_32bit);
    #ifdef CONFIG_LOG 
        char file_name[50];
        snprintf(file_name, sizeof(file_name), "dumps/1_pre_emphasis.hex");
        dump_buffer_to_hex_32(file_name, samples_32bit, num_samples);
    #endif


    //SEGUNDA ETAPA "enquadramento

    // Pode haver inconsistência no cálculo de frame_step devido a arredondamentos.
    // Isso pode levar à geração de frames levemente diferentes ao longo do tempo,
    // acumulando um erro perceptível no resultado final.

                                                                                     // NOTE o "+ 1"
    int32_t **frames = frame_signal_int(samples_32bit, num_samples, frame_size, frame_step, &num_frames);
    #ifdef CONFIG_LOG
        for (int i = 0; i < num_frames; i++) {
            char file_name[64];
            snprintf(file_name, sizeof(file_name), "dumps/2_frames/%04d.hex", i);
            dump_buffer_to_hex_32(file_name, frames[i], frame_size);

        }

    #endif

    //TERCEIRA ETAPA "janelamento"
    int16_t window_q15[frame_size];
    generate_hamming_window_q15(window_q15, frame_size);

    for(int i = 0; i < num_frames; i++) {
        hamming_window_fixed(frames[i], window_q15, frame_size);
    }

    #ifdef CONFIG_CREATE_DATABANK
        save_window_to_file("tables/hamming_window.hex", window_q15, frame_size);
    #endif
    
    #ifdef CONFIG_LOG
        for(int i = 0; i < num_frames; i++) {
            char file_name[50];
            snprintf(file_name, sizeof(file_name), "dumps/3_hamming_frames/%04d.hex", i);
            dump_buffer_to_hex_32(file_name, frames[i], frame_size);
        }
    #endif

    //QUARTA ETAPA FFT

    int num_freqs = NFFT; // Frequências DC a Nyquist, NFFT é definido no q15_fft.h
    q31_32_t power_spectrum[num_frames][num_freqs]; // transposição do espectro de potência
    

    for(int i = 0; i < num_frames; i++) {
        power_spectrum[i][0] = 0; // DC é zero
        fft_q15_real_power(frames[i], frame_size, power_spectrum[i]);
    }

    
    #ifdef CONFIG_LOG
        for (int i = 0; i < num_frames; i++) {
            char filename[128];
            snprintf(filename, sizeof(filename), "dumps/4_power_spectrum/%04d.hex", i);

            dump_buffer_q31_to_float(filename, power_spectrum[i], NFFT/2 + 1);
        }
 
        // Salvar o primeiro frame em arquivo para plot
        FILE *fp1 = fopen("dumps/plots/frame1.dat", "w");
        if (!fp1) {
            perror("Erro ao criar arquivo de dados");
        } else {
            for (int i = 0; i < NFFT/2 + 1; i++) {
                fprintf(fp1, "%d %d\n", i, power_spectrum[1][i]);
            }
            fclose(fp1);
            system("gnuplot -p -e \"plot 'data/frame1.dat' with lines title 'Frame 1 power'\"");
        }
    #endif



    //QUINTA ETAPA Banco de filtros + DCT (cepstrais)

    int32_t energies[NUM_FILTERS];
    init_cos_lut();

    #ifdef CONFIG_LOG
        FILE *fp_ceps = fopen("dumps/plots/ceps_matrix.dat", "w");
        if (!fp_ceps) perror("Erro ao criar ceps_matrix.dat");

        FILE *fp_spec = fopen("dumps/plots/spectrogram_matrix.dat", "w");
        if (!fp_spec) perror("Erro ao criar spectrogram_matrix.dat");
    #endif


    for (int i = 0; i < num_frames; i++) {

        optimization_apply_q15(power_spectrum[i], energies, sample_rate);



        #ifdef CONFIG_LOG
            char energy_file[64];
            snprintf(energy_file, sizeof(energy_file), "dumps/5_energies/%04d.hex", i);
            dump_buffer_q15_to_float(energy_file, energies, NUM_FILTERS);

            if (fp_spec) {
                for (int j = 0; j < NUM_FILTERS; j++) {
                    fprintf(fp_spec, "%2f%c",
                             q15_16_to_float(energies[j]),
                            (j == NUM_FILTERS - 1) ? '\n' : ' ');
                }
            }
        #endif

        int32_t ceps[NUM_CEPS];
        dct_fixed(energies, NUM_FILTERS, ceps);

        #ifdef CONFIG_LOG
            char ceps_file[64];
            snprintf(ceps_file, sizeof(ceps_file), "dumps/6_ceps/%04d.hex", i);
            dump_buffer_q15_to_float(ceps_file, ceps, NUM_CEPS);

            if (fp_ceps) {
                for (int j = 0; j < NUM_CEPS; j++) {
                    fprintf(fp_ceps, "%.6f%c", (float)ceps[j], (j == NUM_CEPS - 1) ? '\n' : ' ');
                }
            }
        #endif
    }



    #ifdef CONFIG_LOG
        if (fp_ceps) fclose(fp_ceps);
        if (fp_spec) fclose(fp_spec);
    #endif



    clock_t end_time = clock();
    double time_spent = (double)(end_time - start_time) / CLOCKS_PER_SEC;
    printf("Execution Time (us): %.2f\n", time_spent * 1e6);
    unsigned long long end_cycles = get_cycles();
    printf("CPU Cycles: %llu\n", end_cycles - start_cycles);


    free(frames);
    free(samples);
    free(header);

    return 0;
}
