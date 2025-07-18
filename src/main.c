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

    printf("WAV file opened successfully:\n");

    int sample_rate = header->sampleRate;
    int frame_size  = (int)ceil(sample_rate * FRAME_SIZE);
    int frame_step  = (int)ceil(sample_rate * FRAME_STEP);
    int num_samples = header->subchunk2Size / sizeof(uint16_t);
    int num_frames;

    pre_emphasis(samples, header->subchunk2Size / sizeof(int16_t), ALPHA);

    int16_t **frames = frame_signal_int((int16_t *)samples, num_samples, frame_size, frame_step, &num_frames);

    if (!frames) {
        fprintf(stderr, "Failed to create frames from samples.\n");
        free(samples);
        free(header);
        return 1;
    }

    printf("Número total de frames: %d\n", num_frames);

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
    
    int16_t power_spectrum[num_frames][num_freqs]; // transposição do espectro de potência

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

    int16_t filterbank[NUM_FILTERS][NFFT/2 + 1];

    printf("Criando banco de filtros...\n");

    create_filterbank_q15(filterbank, header->sampleRate);
    printf("Banco de filtros criado com sucesso.\n");
    printf("Num frames: %d, Num filtros: %d, NFFT: %d\n", num_frames, NUM_FILTERS, NFFT);

    FILE *fp3 = fopen("data/spectrogram_matrix.dat", "w");
    FILE *fp4 = fopen("data/ceps_matrix.dat", "w");
    for (int i = 0; i < num_frames; i++) {
        int16_t energies[NUM_FILTERS];
        apply_filterbank_q15(power_spectrum[i], filterbank, energies);

        for (int j = 0; j < NUM_FILTERS; j++) {
            fprintf(fp3, "%d%c", energies[j], (j == NUM_FILTERS - 1) ? '\n' : ' ');
        }

        int16_t ceps[NUM_CEPS];
        dct_q15(energies, NUM_FILTERS, ceps);

        for (int j = 0; j < NUM_CEPS; j++) {
            fprintf(fp4, "%d%c", ceps[j], (j == NUM_CEPS - 1) ? '\n' : ' ');
        }
    }

    fclose(fp3);
    fclose(fp4);

    free(frames);
    free(samples);
    free(header);

    return 0;
}