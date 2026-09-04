#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <math.h>
#include "process.h"

int ceil_div(int a, int b) {
    return (a + b - 1) / b;
}


// Pré-calcula a janela de Hamming em ponto fixo
void generate_hamming_window(int32_t *window, int frame_size, int F) {
    int32_t SCALE = 1 << F;
    for (int i = 0; i < frame_size; i++) {
        float w = 0.54 - 0.46 * cos(2 * M_PI * i / (frame_size - 1));
        window[i] = (int32_t)(w * SCALE); // conversão para ponto fixo
    }
}

// Aplica a janela Hamming com ponto fixo
void hamming_window_fixed(int64_t *frame, int32_t *window, int frame_size, int F_HAMMING, int F_PRE_EMPHASIS) {
    for (int i = 0; i < frame_size; i++) {
        int64_t frame_i = frame[i];
        if (F_PRE_EMPHASIS > F_HAMMING)
            frame_i = frame[i] >> (F_PRE_EMPHASIS - F_HAMMING);
        else if (F_PRE_EMPHASIS < F_HAMMING)
            frame_i = frame[i] << (F_HAMMING - F_PRE_EMPHASIS);
        int64_t temp = frame_i * (int64_t)window[i];
        frame[i] = (temp >> F_HAMMING);
    }
}

void save_window_to_file(const char *filename, int32_t *window, int size) {
    FILE *file = fopen(filename, "w");
    if (!file) {
        fprintf(stderr, "Erro ao abrir o arquivo %s para escrita.\n", filename);
        return;
    }

    for (int i = 0; i < size; i++) {
        fprintf(file, "%.8X\n", window[i]);
    }

    fclose(file);
}

// Função para criar os frames do sinal
int64_t** frame_signal_int(int64_t *samples, int num_samples, int frame_size, int frame_step, int *out_num_frames) {
    int num_frames = ceil_div((num_samples - frame_size), frame_step) + 1;

    // Aloca matriz de frames (num_frames x frame_size)
    int64_t **frames = (int64_t **)malloc(num_frames * sizeof(int64_t *));
    if (!frames) {
        fprintf(stderr, "Erro ao alocar memória para frames.\n");
        return NULL;
    }

    for (int i = 0; i < num_frames; i++) {
        frames[i] = (int64_t *)calloc(frame_size, sizeof(int64_t));  // Zera para padding automático
        if (!frames[i]) {
            fprintf(stderr, "Erro ao alocar memória para o frame %d.\n", i);
            // Libera frames anteriores se der erro
            for (int j = 0; j < i; j++) free(frames[j]);
            free(frames);
            return NULL;
        }

        // Copia os samples para o frame atual (se dentro do tamanho total de samples)
        int frame_start = i * frame_step;
        for (int j = 0; j < frame_size; j++) {
            int sample_index = frame_start + j;
            if (sample_index < num_samples) {
                frames[i][j] = samples[sample_index];
            } else {
                frames[i][j] = 0;  // Zero padding
            }
        }
    }

    *out_num_frames = num_frames;
    return frames;
}

void pre_emphasis(int16_t *samples, size_t sample_count, int64_t *samples_out, int F) {
    int64_t temp;
    int64_t sample_pf;
    int32_t SCALE = 1 << F;
    int32_t ALPHA = (int32_t)(0.97 * SCALE);

    for (size_t i = sample_count - 1; i > 0; i--) {
        sample_pf = (int64_t)samples[i] << F;
        temp = (int64_t) ALPHA * (int64_t)samples[i - 1];
        samples_out[i] = sample_pf - temp; 
    }
}