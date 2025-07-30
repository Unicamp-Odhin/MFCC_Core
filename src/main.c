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
    printf("Number of frames: %d\n", num_frames);
    int num_to_print = (num_samples < 20) ? num_samples : 20;
    printf("First 20 samples in sequence: ");
    for (int i = 0; i < num_to_print; i++) {
        printf("%X ", samples[i]);
    }
    printf("\n");
    
    pre_emphasis(samples, header->subchunk2Size / sizeof(int16_t), ALPHA);

    printf("Samples after pre-emphasis: ");
    for (int i = 0; i < 20; i++) {
        printf("%X ", samples[i]);
    }
    printf("\n");

    int32_t **frames = frame_signal_int((int16_t *)samples, num_samples, frame_size, frame_step, &num_frames);


    if (!frames) {
        fprintf(stderr, "Failed to create frames from samples.\n");
        free(samples);
        free(header);
        return 1;
    }


    for(int i = 0; i < num_frames; i++) {
        hamming_window(frames[i], frame_size);
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
    
    // Salvar o primeiro frame em arquivo para plot
    FILE *fp1 = fopen("data/frame1.dat", "w");
    if (!fp1) {
        perror("Erro ao criar arquivo de dados");
    } else {
        for (int i = 0; i < num_freqs; i++) {
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

    // Plotar o banco de filtros
    plot_filterbank_q30(filterbank_15);

    FILE *fp3 = fopen("data/spectrogram_matrix.dat", "w");
    FILE *fp4 = fopen("data/ceps_matrix.dat", "w");
    if (!fp3 || !fp4) {
        perror("Erro ao abrir arquivos de saída");
        return 1;
    }

    #if defined(CONFIG_USE_FLOAT_MEL)       
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
        int8_t energies[NUM_FILTERS];
        for (int i = 0; i < num_frames; i++) {
            apply_filterbank_q15(power_spectrum[i], filterbank_15, energies);

            for (int j = 0; j < NUM_FILTERS; j++) {
                fprintf(fp3, "%d%c", energies[j], (j == NUM_FILTERS - 1) ? '\n' : ' ');
            }
            int16_t ceps[NUM_CEPS];
            dct_q15((int16_t *)energies, NUM_FILTERS, ceps);

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