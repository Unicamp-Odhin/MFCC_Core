#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <math.h>
#include "process.h"


#define Q15_SCALE 32768

int ceil_div(int a, int b) {
    return (a + b - 1) / b;
}

/*
void hamming_window(int16_t *frame, int frame_size) {
    for (int i = 0; i < frame_size; i++) {
        frame[i] = (int16_t)(frame[i] * (0.54 - 0.46 * cos(2 * M_PI * i / (frame_size - 1))));
    }
}
*/
// Pré-calcula a janela de Hamming em Q15
void generate_hamming_window_q15(int16_t *window, int frame_size) {
    for (int i = 0; i < frame_size; i++) {
        float w = 0.54 - 0.46 * cos(2 * M_PI * i / (frame_size - 1));
        window[i] = (int16_t)(w * Q15_SCALE); // conversão para Q15
    }
}

// Aplica a janela Hamming com ponto fixo
void hamming_window_fixed(int16_t *frame, const int16_t *window_q15, int frame_size) {
    for (int i = 0; i < frame_size; i++) {
        int32_t temp = (int32_t)frame[i] * window_q15[i];
        frame[i] = (int16_t)(temp >> 15);  // retorna para Q15
    }
}

void hamming_window(int16_t *frame, int frame_size) {
    // Aloca espaço para a janela Hamming em Q15
    int16_t window_q15[frame_size];

    // Gera os coeficientes da janela Hamming em Q15
    generate_hamming_window_q15(window_q15, frame_size);

    // Aplica a janela usando ponto fixo
    hamming_window_fixed(frame, window_q15, frame_size);
}

// Função para criar os frames do sinal
int16_t** frame_signal_int(const int16_t *samples, int num_samples, int frame_size, int frame_step, int *out_num_frames) {
    int num_frames = ceil_div((num_samples - frame_size), frame_step) + 1;

    // Aloca matriz de frames (num_frames x frame_size)
    int16_t **frames = (int16_t **)malloc(num_frames * sizeof(int16_t *));
    if (!frames) {
        fprintf(stderr, "Erro ao alocar memória para frames.\n");
        return NULL;
    }

    for (int i = 0; i < num_frames; i++) {
        frames[i] = (int16_t *)calloc(frame_size, sizeof(int16_t));  // Zera para padding automático
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

void pre_emphasis(int16_t *samples, size_t sample_count, int16_t alpha) {
    int32_t temp;
    for (size_t i = 1; i < sample_count; i++) {
        temp = alpha * samples[i - 1];
        temp = temp >> 15; // Ajusta para Q15
        samples[i] = samples[i] - temp; // Ajusta para Q15
    }
}