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

#ifdef CONFIG_ROCm
#include <hip/hip_runtime.h>
#endif


#define ALPHA 31785
#define FRAME_SIZE 0.025 // seconds
#define FRAME_STEP 0.01 // seconds

void dump_buffer_to_hex_16(const char *file_name, int16_t *buffer, int size) {
    FILE *fp = fopen(file_name, "w");
    if (!fp) {
        perror("fopen");
        return;
    }
    for (int i = 0; i < size; i++) {
        fprintf(fp, "%04x\n", buffer[i]);
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

void dump_short_int_buffer_to_hex(const char *file_name, int16_t *buffer, int size) {
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

int main(int argc, char *argv[]) {
    if (argc < 2) {
        fprintf(stderr, "Usage: %s <filename>.wav\n", argv[0]);
        return 1;
    }

    // system("mkdir -p data");

    int16_t *samples = NULL;
    WavHeader *header = open_wav_file(argv[1], &samples);

    if (!header) {
        fprintf(stderr, "Failed to open WAV file: %s\n", argv[1]);
        return 1;
    }

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

    #ifdef CONFIG_ROCm
        int16_t *d_samples;
        hipMalloc(&d_samples, sample_count * sizeof(int16_t));

        hipMemcpy(d_samples, samples, sample_count * sizeof(int16_t), hipMemcpyHostToDevice);

        hipLaunchKernelGGL(pre_emphasis,
                        dim3(1), dim3(1), 0, 0,
                        d_samples, sample_count, ALPHA);

        hipMemcpy(samples, d_samples, sample_count * sizeof(int16_t), hipMemcpyDeviceToHost);

        hipFree(d_samples);
    #else
        pre_emphasis(samples, sample_count, ALPHA);
    #endif


    int32_t **frames = frame_signal_int((int16_t *)samples, num_samples, frame_size, frame_step, &num_frames);


    #ifdef CONFIG_LOG 
        for(int i = 0; i < num_frames; i++) {
            char file_name[50];
            snprintf(file_name, sizeof(file_name), "dumps/frame_%d.hex", i);
            dump_buffer_to_hex_32(file_name, frames[i], frame_size);
        }
    #endif


    // if (!frames) {
    //     fprintf(stderr, "Failed to create frames from samples.\n");
    //     free(samples);
    //     free(header);
    //     return 1;
    // }

    for(int i = 0; i < num_frames; i++) {
        hamming_window(frames[i], frame_size);
    }
    
    #ifdef CONFIG_LOG
        for(int i = 0; i < num_frames; i++) {
            char file_name[50];
            snprintf(file_name, sizeof(file_name), "dumps/hamming_frame_%d.hex", i);
            dump_buffer_to_hex_32(file_name, frames[i], frame_size);
        }
    #endif

    #ifdef CONFIG_LOG
        FILE *fp = fopen("data/preemphasis.dat", "w");
        if (!fp) {
            perror("fopen");
            return 1;
        }
        
        for (int i = 0; i < frame_size; i++) {
            fprintf(fp, "%d %d\n", i, frames[0][i]);
        }
        
        fclose(fp);
    #endif

    int num_freqs = NFFT; // Frequências DC a Nyquist, NFFT é definido no q15_fft.h
    
    int32_t power_spectrum[num_frames][num_freqs]; // transposição do espectro de potência
    
    for(int i = 0; i < num_frames; i++) {
        power_spectrum[i][0] = 0; // DC é zero
        fft_q15_real_power(frames[i], frame_size, power_spectrum[i]);
    }

    #ifdef CONFIG_LOG
        dump_buffer_to_hex_32("data/power_spectrum.hex", power_spectrum[0], NFFT/2 + 1);
        
        // Salvar o primeiro frame em arquivo para plot
        FILE *fp1 = fopen("data/frame1.dat", "w");
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


    FILE *fp4 = fopen("data/ceps_matrix.dat", "w");
    if (!fp4) {
        perror("Erro ao abrir arquivos de saída");
        return 1;
    }

    int8_t energies[NUM_FILTERS];
    init_cos_lut();

    for (int i = 0; i < num_frames; i++) {
        char file_name[50];
        optimization_apply_q15(power_spectrum[i], energies);
        
        #ifdef CONFIG_LOG
        FILE *fp3 = fopen("data/spectrogram_matrix.dat", "w");
            for (int j = 0; j < NUM_FILTERS; j++) {
                fprintf(fp3, "%d%c", energies[j], (j == NUM_FILTERS - 1) ? '\n' : ' ');
            }
            fclose(fp3);
        #endif

        int16_t ceps[NUM_CEPS];
        dct_fixed(energies, NUM_FILTERS, ceps);
        snprintf(file_name, sizeof(file_name), "dumps/ceps_%d.hex", i);
        dump_short_int_buffer_to_hex(file_name, ceps, NUM_CEPS);

        for (int j = 0; j < NUM_CEPS; j++) {
            fprintf(fp4, "%d%c", ceps[j], (j == NUM_CEPS - 1) ? '\n' : ' ');
        }
    }

    fclose(fp4);

    // free(frames);
    // free(samples);
    // free(header);

    return 0;
}