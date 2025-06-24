#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <math.h>
#include "wav.h"
#include "process.h"

#define ALPHA 0.97f
#define FRAME_SIZE 0.025 // seconds
#define FRAME_STEP 0.01 // seconds


int main(int argc, char *argv[]) {
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

        // Salvar o primeiro frame em arquivo para plot
    FILE *fp = fopen("frame1.dat", "w");
    if (!fp) {
        perror("Erro ao criar arquivo de dados");
    } else {
        for (int i = 0; i < frame_size; i++) {
            fprintf(fp, "%d %d\n", i, frames[0][i]);
        }
        fclose(fp);

        // Abre o gnuplot para visualizar o gráfico
        system("gnuplot -p -e \"plot 'frame1.dat' with lines title 'Frame 1 com janela Hamming'\"");
    }

    free(frames);
    free(samples);
    free(header);

    return 0;
}