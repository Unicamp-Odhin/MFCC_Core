// #include <cmath>0
#include <float.h>
#include <math.h>
#include <stdint.h>
#include "mel.h"
#include "q15_16.h"
#include "q31_32.h"
#include "q15_fft.h"
#include <stdio.h>
#include <stdlib.h>

#define MIN_LOG_ENERGY_Q15_16 FLOAT_TO_Q15_16(-20.0f)


// Converte frequência em Hz para índice de bin na FFT
static inline int hz_to_bin(float freq, int sample_rate) {
    return (int)((freq / (sample_rate / 2.0f)) * (NFFT / 2));
}

void save_filterbank_to_file(float filterbank[NUM_FILTERS][NFFT/2 + 1]) {
    const char *filepath = "tables/filter_bank.dat";
    FILE *file = fopen(filepath, "w");
    if (!file) {
        perror("Erro ao abrir o arquivo para salvar o filterbank");
        exit(EXIT_FAILURE);
    }

    for (int i = 0; i < NUM_FILTERS; i++) {
        for (int j = 0; j < NFFT / 2 + 1; j++) {
            fprintf(file, "%f ", filterbank[i][j]);
        }
        fprintf(file, "\n");
    }

    fclose(file);
}

// Carrega o filterbank da memória a partir de um arquivo
void load_filterbank_from_file(float filterbank[NUM_FILTERS][NFFT/2 + 1]) {
    const char *filepath = "tables/filter_bank.dat";
    FILE *file = fopen(filepath, "r");
    if (!file) {
        perror("Erro ao abrir o arquivo de filterbank");
        exit(EXIT_FAILURE);
    }

    for (int i = 0; i < NUM_FILTERS; i++) {
        for (int j = 0; j < (NFFT/2 + 1); j++) {
            if (fscanf(file, "%f", &filterbank[i][j]) != 1) {
                fprintf(stderr, "Erro ao ler o arquivo de filterbank na linha %d, coluna %d\n", i, j);
                fclose(file);
                exit(EXIT_FAILURE);
            }
        }
    }

    fclose(file);
}

// Cria um banco de filtros triangulares lineares na escala Mel
void create_filterbank(float filterbank[NUM_FILTERS][NFFT/2 + 1], int sample_rate) {
    // Inicializa o filterbank com zeros
    memset(filterbank, 0, NUM_FILTERS * (NFFT/2 + 1) * sizeof(float));

    float high_freq_mel = 2595.0f * log10f(1.0f + (sample_rate / 2.0f) / 700.0f); // Convert Hz to Mel

    float mel_points;
    float hz_points;
    int bin[NUM_FILTERS + 2];

    // Gera pontos igualmente espaçados na escala Mel
    for (int i = 0; i < NUM_FILTERS + 2; i++) {
        mel_points = i * (high_freq_mel / (NUM_FILTERS + 1));
        hz_points = 700.0f * (powf(10.0f, mel_points / 2595.0f) - 1.0f);
        bin[i] = (int)floorf((NFFT + 1) * hz_points / sample_rate);
    }

    // Cria filtros triangulares
    for (int m = 1; m <= NUM_FILTERS; m++) {
        int f_m_minus = bin[m - 1];  // esquerda
        int f_m       = bin[m];      // centro
        int f_m_plus  = bin[m + 1];  // direita

        for (int k = f_m_minus; k < f_m && k < NFFT/2 + 1; k++) {
            filterbank[m - 1][k] = (k - f_m_minus) / (float)(f_m - f_m_minus);
        }

        for (int k = f_m; k < f_m_plus && k < NFFT/2 + 1; k++) {
            filterbank[m - 1][k] = (f_m_plus - k) / (float)(f_m_plus - f_m);
        }
    }

}

// Aplica o banco de filtros a um espectro de potência e calcula as energias em dB
void apply_filterbank(int32_t power_spectrum_frame[NFFT/2 + 1], float filterbank[NUM_FILTERS][NFFT/2 + 1], float energies[NUM_FILTERS]) {
    for (int m = 0; m < NUM_FILTERS; m++) {
        float sum = 0.0f;

        for (int k = 0; k < NFFT/2 + 1; k++) {
            sum += power_spectrum_frame[k] * filterbank[m][k];
        }
        if (sum <= 0.0f) {
            sum = FLT_EPSILON;
        }
        energies[m] = 20.0f * log10f(sum);
    }
}

// Aplica o banco de filtros Q1.15 ao espectro de potência Q1.15
void apply_filterbank_q15(
    int32_t power_spectrum_frame[NFFT/2 + 1],
    int32_t filterbank[NUM_FILTERS][NFFT/2 + 1],
    int8_t energies_q15[NUM_FILTERS]  // Saída em Q1.15 (log)
) {
    for (int m = 0; m < NUM_FILTERS; m++) {
        int32_t sum = 0;

        for (int k = 0; k < NFFT/2 + 1; k++) {
            sum = q15_16_add(sum, q15_16_mul(power_spectrum_frame[k], filterbank[m][k]));  // acumulando em Q31_32_FRAC_BITS
        }

        if (sum <= 0) {
            //energies_q15[m] = MIN_LOG_ENERGY_Q15;
            energies_q15[m] = 0x80;
        } else {
            energies_q15[m] = 6 * q15_16_log2(sum);

        }
    }
}

void create_filterbank_q31_32(q31_32_t filterbank[NUM_FILTERS][NFFT/2 + 1], int sample_rate) {
    float filterbank_float[NUM_FILTERS][NFFT/2 + 1];
    create_filterbank(filterbank_float, sample_rate);
    for (int i = 0; i < NUM_FILTERS; i++)
        for (int j = 0; j < NFFT/2 +1; j++)
            filterbank[i][j] = float_to_q31_32(filterbank_float[i][j]);
}

void create_op_filterbank_q31_32(q31_32_t** filterbank_op, int sample_rate) {
    int16_t init_index;
    int16_t end_index;
    int16_t tmp;
    int16_t max_size = 0;

    q31_32_t filterbank[NUM_FILTERS][NFFT/2 + 1];
    create_filterbank_q31_32(filterbank, sample_rate);

    for (int i = 0; i < NUM_FILTERS; i++) {

        for (init_index = 0; 
             init_index < NFFT / 2 + 1 && !filterbank[i][init_index]; 
             init_index++);

        for (end_index = NFFT / 2; 
             end_index >= 0 && !filterbank[i][end_index]; 
             end_index--);

        if (end_index < init_index)
            continue;

        tmp = end_index - init_index + 1;

        if (tmp > max_size)
            max_size = tmp;
    }

    for (int i = 0; i < NUM_FILTERS; i++) {

        filterbank_op[i] = malloc((max_size + 2) * sizeof(q31_32_t));

        for (init_index = 0; 
             init_index < NFFT / 2 + 1 && !filterbank[i][init_index]; 
             init_index++);

        for (end_index = NFFT / 2; 
             end_index >= 0 && !filterbank[i][end_index]; 
             end_index--);

        int k = 2;

        filterbank_op[i][0] = init_index;
        filterbank_op[i][1] = end_index;

        for (int j = init_index; j <= end_index; j++) {
            filterbank_op[i][k++] = filterbank[i][j];
        }

        while (k < max_size + 2) {
            filterbank_op[i][k++] = 0;
        }
    }
}

void optimization_apply_q15(int64_t power_spectrum_frame[NFFT/2 + 1], int32_t energies_q15[NUM_FILTERS], int sample_rate) {
    q31_32_t **filterbank_q31_32 = malloc(NUM_FILTERS * sizeof(q31_32_t*));

    create_op_filterbank_q31_32(filterbank_q31_32, sample_rate);

    for (int i = 0; i < NUM_FILTERS; i++) {
        q31_32_t sum = 0;

        int init_index = filterbank_q31_32[i][0];
        int end_index = filterbank_q31_32[i][1] + 1;


        // Como o banco do filtro foi calculado com 15 bits de decimais, apenas desloquei 16 bits
        for (int k = init_index; k < end_index ; k++) {
            sum = q31_32_add(sum, q31_32_mul(power_spectrum_frame[k], filterbank_q31_32[i][2 + k - init_index]));
        }

        if (sum <= 0) {
            energies_q15[i] = MIN_LOG_ENERGY_Q15_16;
        } else {
            int64_t temp = q31_32_mul(float_to_q31_32(20.0f), q31_32_log10(sum));
            energies_q15[i] = (q15_16_t)(temp >> 16);
        }
    }
}