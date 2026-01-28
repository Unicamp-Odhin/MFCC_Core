#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <math.h>
#include "wav.h"
#include "process.h"
#include "q15_fft.h"
#include "mel.h"
#include "dct.h"
#include <time.h>
#include <x86intrin.h>
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
    if (ensure_dir("dumps") != 0) return -1;
    if (ensure_dir("dumps") != 0) return -1;
    if (ensure_dir("dumps/plots") != 0) return -1;
    if (ensure_dir("dumps/power_spectrum") != 0) return -1;
    if (ensure_dir("dumps/2_frames") != 0) return -1;
    if (ensure_dir("dumps/3_hamming_frames") != 0) return -1;
    if (ensure_dir("dumps/4_energies") != 0) return -1;
    if (ensure_dir("dumps/6_ceps") != 0) return -1;
    
    return 0;
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
        fprintf(fp, "%04x\n", buffer[i] & 0xFFFF);
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
        fprintf(fp, "%.6f\n", q15_to_float(buffer[i]) * (2 << 15));

    }
    fclose(fp);
}

int main(int argc, char *argv[]) {

    clock_t start_time = clock();
    unsigned long long start_cycles = __rdtsc();


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
    

    #ifdef CONFIG_VERBOSE 
        printf("Número total de frames: %d\n", num_frames);
        printf("Sample rate: %d Hz\n", sample_rate);
        printf("Frame size: %d samples\n", frame_size);
        printf("Frame step: %d samples\n", frame_step);
        printf("Number of samples: %d\n", num_samples);
    #endif
    
    
    #ifdef CONFIG_LOG 
        dump_buffer_to_hex_16("data/samples_dump.hex", samples, num_samples);
    #endif

    
    //PRIMEIRA ETAPA "pre enfase"
    pre_emphasis(samples, header->subchunk2Size / sizeof(int16_t), ALPHA);
    #ifdef CONFIG_LOG 
        char file_name[50];
        snprintf(file_name, sizeof(file_name), "dumps/1_pre_emphasis.hex");
        dump_buffer_to_hex_16(file_name, samples, num_samples);
    #endif


    //SEGUNDA ETAPA "enquadramento"
    int32_t **frames = frame_signal_int((int16_t *)samples, num_samples, frame_size, frame_step, &num_frames);
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
    
    int32_t power_spectrum[num_frames][num_freqs]; // transposição do espectro de potência
    
    for(int i = 0; i < num_frames; i++) {
        power_spectrum[i][0] = 0; // DC é zero
        fft_q15_real_power(frames[i], frame_size, power_spectrum[i]);
    }

    
    #ifdef CONFIG_LOG
        for (int i = 0; i < num_frames; i++) {
            char filename[128];
            snprintf(filename, sizeof(filename), "dumps/power_spectrum/%04d.hex", i);

            dump_buffer_to_hex_32(filename, power_spectrum[0], NFFT/2 + 1);
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
        FILE *fp_ceps = fopen("dumps/7_ceps_matrix.dat", "w");
        if (!fp_ceps) perror("Erro ao criar 7_ceps_matrix.dat");

        FILE *fp_spec = fopen("dumps/5_spectrogram_matrix.dat", "w");
        if (!fp_spec) perror("Erro ao criar 5_spectrogram_matrix.dat");
    #endif

    for (int i = 0; i < num_frames; i++) {

        optimization_apply_q15(power_spectrum[i], energies);

        #ifdef CONFIG_LOG
            char energy_file[64];
            snprintf(energy_file, sizeof(energy_file), "dumps/4_energies/%04d.hex", i);
            dump_buffer_to_hex_32(energy_file, energies, NUM_FILTERS);

            if (fp_spec) {
                for (int j = 0; j < NUM_FILTERS; j++) {
                    fprintf(fp_spec, "%d%c",
                            energies[j],
                            (j == NUM_FILTERS - 1) ? '\n' : ' ');
                }
            }
        #endif

        int32_t ceps[NUM_CEPS];
        dct_fixed(energies, NUM_FILTERS, ceps);

        #ifdef CONFIG_LOG
            char ceps_file[64];
            snprintf(ceps_file, sizeof(ceps_file), "dumps/6_ceps/%04d.hex", i);
            dump_short_int_buffer_to_hex(ceps_file, ceps, NUM_CEPS);

            if (fp_ceps) {
                for (int j = 0; j < NUM_CEPS; j++) {
                    fprintf(fp_ceps, "%.6f%c", (float)ceps[j] / 32768.0f, (j == NUM_CEPS - 1) ? '\n' : ' ');
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
    unsigned long long end_cycles = __rdtsc();
    printf("CPU Cycles: %llu\n", end_cycles - start_cycles);


    free(frames);
    free(samples);
    free(header);

    return 0;
}