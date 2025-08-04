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

#define ALPHA 31785
#define FRAME_SIZE 0.025 // seconds
#define FRAME_STEP 0.01 // seconds


void print_samples(int32_t *samples, int num_samples) {
    for (int i = 0; i < num_samples; i++) {
        printf("Sample[%d]: %d\n", i, samples[i]);
    }
}

void dump_buffer_to_hex(const char *file_name, int32_t *buffer, int size) {
    FILE *fp = fopen(file_name, "w");
    if (!fp) {
        perror("fopen");
        return;
    }
    for (int i = 0; i < size; i++) {
        uint16_t sample = buffer[i] & 0xFFFF; // Convert to 16-bit signed integer
        fprintf(fp, "%04x\n", sample);
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
    system("mkdir -p data");

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
    int num_frames;
    
    printf("Número total de frames: %d\n", num_frames);
    printf("Sample rate: %d Hz\n", sample_rate);
    printf("Frame size: %d samples\n", frame_size);
    printf("Frame step: %d samples\n", frame_step);
    printf("Number of samples: %d\n", num_samples);

    dump_buffer_to_hex("data/samples_dump.hex", (int32_t *)samples, num_samples);
    
    pre_emphasis(samples, header->subchunk2Size / sizeof(int16_t), ALPHA);

    int32_t **frames = frame_signal_int((int16_t *)samples, num_samples, frame_size, frame_step, &num_frames);

    printf("Number of frames: %d\n", num_frames);
    int num_to_print = (num_samples < 20) ? num_samples : 20;
    printf("First 20 samples in sequence: ");
    for (int i = 0; i < num_to_print; i++) {
        printf("%X ", samples[i]);
    }
    printf("\n");

    for(int i = 0; i < num_frames; i++) {
        char file_name[50];
        snprintf(file_name, sizeof(file_name), "dumps/frame_%d.hex", i);
        dump_buffer_to_hex(file_name, frames[i], frame_size);
    }


    if (!frames) {
        fprintf(stderr, "Failed to create frames from samples.\n");
        free(samples);
        free(header);
        return 1;
    }

    for(int i = 0; i < num_frames; i++) {
        hamming_window(frames[i], frame_size);
    }
    
    for(int i = 0; i < num_frames; i++) {
        char file_name[50];
        snprintf(file_name, sizeof(file_name), "dumps/hamming_frame_%d.hex", i);
        dump_buffer_to_hex(file_name, frames[i], frame_size);
    }

    FILE *fp = fopen("data/preemphasis.dat", "w");
    if (!fp) {
        perror("fopen");
        return 1;
    }
    
    for (int i = 0; i < frame_size; i++) {
        fprintf(fp, "%d %d\n", i, frames[0][i]);
    }
    
    fclose(fp);
    
    //int num_freqs = (frame_size / 2) + 1; // Frequências DC a Nyquist
    int num_freqs = NFFT; // Frequências DC a Nyquist, NFFT é definido no q15_fft.h
    
    int32_t power_spectrum[num_frames][num_freqs]; // transposição do espectro de potência
    
    for(int i = 0; i < num_frames; i++) {
        power_spectrum[i][0] = 0; // DC é zero
        fft_q15_real_power(frames[i], frame_size, power_spectrum[i]);
    }

    dump_buffer_to_hex("data/power_spectrum.hex", power_spectrum[0], NFFT/2 + 1);
    
    // Salvar o primeiro frame em arquivo para plot
    FILE *fp1 = fopen("data/frame1.dat", "w");
    if (!fp1) {
        perror("Erro ao criar arquivo de dados");
    } else {
        for (int i = 0; i < NFFT/2 + 1; i++) {
            fprintf(fp1, "%d %d\n", i, power_spectrum[1][i]);
        }
        fclose(fp1);

        // Abre o gnuplot para visualizar o gráfico
        system("gnuplot -p -e \"plot 'data/frame1.dat' with lines title 'Frame 1 power'\"");
    }

    printf("Criando banco de filtros...\n");


    float filterbank[NUM_FILTERS][NFFT/2 + 1];
    //load_filterbank_from_file(filterbank);

    create_filterbank(filterbank, sample_rate);
    
    int32_t filterbank_15[NUM_FILTERS][NFFT/2 + 1];
    int16_t filterbank_152[NUM_FILTERS][NFFT/2 + 1];
    for (int i = 0; i < NUM_FILTERS; i++) {
        for (int j = 0; j < NFFT / 2 + 1; j++) {
            filterbank_15[i][j] = (int32_t)float_to_q15(filterbank[i][j]);
        }
    }

    FILE *fp3 = fopen("data/spectrogram_matrix.dat", "w");
    FILE *fp4 = fopen("data/ceps_matrix.dat", "w");
    if (!fp3 || !fp4) {
        perror("Erro ao abrir arquivos de saída");
        return 1;
    }

    #ifdef CONFIG_USE_FLOAT_MEL
        float energies[NUM_FILTERS];
        for (int i = 0; i < num_frames; i++) {
            apply_filterbank(power_spectrum[i], filterbank, energies);
            
            for (int j = 0; j < NUM_FILTERS; j++) {
                fprintf(fp3, "%.6f%c", energies[j], (j == NUM_FILTERS - 1) ? '\n' : ' ');
            }
            
            float ceps[NUM_CEPS];
            dct(energies, NUM_FILTERS, ceps);
            
            for (int j = 0; j < NUM_CEPS; j++) {
                fprintf(fp4, "%.6f%c", ceps[j], (j == NUM_CEPS - 1) ? '\n' : ' ');
            }
        }


    #else
        optimization_filterbank_q15(filterbank_15);

        int8_t energies[NUM_FILTERS];
        init_cos_lut();
        // }
        for (int i = 0; i < num_frames; i++) {
            char file_name[50];
            optimization_apply_q15(power_spectrum[i], filterbank_15, energies);

            for (int j = 0; j < NUM_FILTERS; j++) {
                fprintf(fp3, "%d%c", energies[j], (j == NUM_FILTERS - 1) ? '\n' : ' ');
            }
            int16_t ceps[NUM_CEPS];
            dct_fixed(energies, NUM_FILTERS, ceps);
            snprintf(file_name, sizeof(file_name), "dumps/ceps_%d.hex", i);
            dump_short_int_buffer_to_hex(file_name, ceps, NUM_CEPS);

            for (int j = 0; j < NUM_CEPS; j++) {
                fprintf(fp4, "%d%c", ceps[j], (j == NUM_CEPS - 1) ? '\n' : ' ');
            }
        }
    #endif

    fclose(fp3);
    fclose(fp4);


    free(frames);
    free(samples);
    free(header);

    return 0;
}