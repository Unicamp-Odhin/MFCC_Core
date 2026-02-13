// #include <cmath>0
#include <float.h>
#include <math.h>
#include <stdint.h>
#include "mel.h"
#include "q15_16.h"
#include "q15_fft.h"
#include <stdio.h>
#include <stdlib.h>

#define MIN_LOG_ENERGY_Q15_16 FLOAT_TO_Q15_16(-20.0f)


int32_t filterbank_15[NUM_FILTERS][OPTIMIZATION_SIZE] = {
    {1, 2, 65536, 32768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {2, 4, 32768, 65536, 32768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {4, 6, 32768, 65536, 32768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {6, 8, 32768, 65536, 32768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {8, 10, 32768, 65536, 32768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {10, 12, 32768, 65536, 32768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {12, 15, 32768, 65536, 43691, 21845, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {14, 18, 21845, 43691, 65536, 43691, 21845, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {17, 20, 21845, 43691, 65536, 32768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {20, 23, 32768, 65536, 43691, 21845, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {22, 26, 21845, 43691, 65536, 43691, 21845, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {25, 30, 21845, 43691, 65536, 49152, 32768, 16384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {28, 33, 16384, 32768, 49152, 65536, 43691, 21845, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {32, 37, 21845, 43691, 65536, 49152, 32768, 16384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {35, 41, 16384, 32768, 49152, 65536, 49152, 32768, 16384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {39, 45, 16384, 32768, 49152, 65536, 49152, 32768, 16384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {43, 49, 16384, 32768, 49152, 65536, 49152, 32768, 16384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {47, 53, 16384, 32768, 49152, 65536, 49152, 32768, 16384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {51, 58, 16384, 32768, 49152, 65536, 52429, 39322, 26214, 13107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {55, 63, 13107, 26214, 39322, 52429, 65536, 52429, 39322, 26214, 13107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {60, 69, 13107, 26214, 39322, 52429, 65536, 54613, 43691, 32768, 21845, 10923, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {65, 74, 10923, 21845, 32768, 43691, 54613, 65536, 52429, 39322, 26214, 13107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {71, 80, 13107, 26214, 39322, 52429, 65536, 54613, 43691, 32768, 21845, 10923, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {76, 87, 10923, 21845, 32768, 43691, 54613, 65536, 56174, 46811, 37449, 28087, 18725, 9362, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {82, 94, 9362, 18725, 28087, 37449, 46811, 56174, 65536, 56174, 46811, 37449, 28087, 18725, 9362, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {89, 101, 9362, 18725, 28087, 37449, 46811, 56174, 65536, 56174, 46811, 37449, 28087, 18725, 9362, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {96, 108, 9362, 18725, 28087, 37449, 46811, 56174, 65536, 56174, 46811, 37449, 28087, 18725, 9362, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {103, 116, 9362, 18725, 28087, 37449, 46811, 56174, 65536, 57344, 49152, 40960, 32768, 24576, 16384, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {110, 124, 8192, 16384, 24576, 32768, 40960, 49152, 57344, 65536, 57344, 49152, 40960, 32768, 24576, 16384, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {118, 133, 8192, 16384, 24576, 32768, 40960, 49152, 57344, 65536, 58254, 50972, 43691, 36409, 29127, 21845, 14564, 7282, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {126, 143, 7282, 14564, 21845, 29127, 36409, 43691, 50972, 58254, 65536, 58982, 52429, 45875, 39322, 32768, 26214, 19661, 13107, 6554, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {135, 153, 6554, 13107, 19661, 26214, 32768, 39322, 45875, 52429, 58982, 65536, 58982, 52429, 45875, 39322, 32768, 26214, 19661, 13107, 6554, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {145, 163, 6554, 13107, 19661, 26214, 32768, 39322, 45875, 52429, 58982, 65536, 58982, 52429, 45875, 39322, 32768, 26214, 19661, 13107, 6554, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {155, 174, 6554, 13107, 19661, 26214, 32768, 39322, 45875, 52429, 58982, 65536, 59578, 53620, 47663, 41705, 35747, 29789, 23831, 17873, 11916, 5958, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {165, 186, 5958, 11916, 17873, 23831, 29789, 35747, 41705, 47663, 53620, 59578, 65536, 60075, 54613, 49152, 43691, 38229, 32768, 27307, 21845, 16384, 10923, 5461, 0, 0, 0, 0, 0, 0, 0},
    {176, 198, 5461, 10923, 16384, 21845, 27307, 32768, 38229, 43691, 49152, 54613, 60075, 65536, 60075, 54613, 49152, 43691, 38229, 32768, 27307, 21845, 16384, 10923, 5461, 0, 0, 0, 0, 0, 0},
    {188, 211, 5461, 10923, 16384, 21845, 27307, 32768, 38229, 43691, 49152, 54613, 60075, 65536, 60495, 55454, 50412, 45371, 40330, 35289, 30247, 25206, 20165, 15124, 10082, 5041, 0, 0, 0, 0, 0},
    {200, 225, 5041, 10082, 15124, 20165, 25206, 30247, 35289, 40330, 45371, 50412, 55454, 60495, 65536, 60855, 56174, 51493, 46811, 42130, 37449, 32768, 28087, 23406, 18725, 14043, 9362, 4681, 0, 0, 0},
    {213, 240, 4681, 9362, 14043, 18725, 23406, 28087, 32768, 37449, 42130, 46811, 51493, 56174, 60855, 65536, 61167, 56798, 52429, 48060, 43691, 39322, 34953, 30583, 26214, 21845, 17476, 13107, 8738, 4369, 0},
    {227, 255, 4369, 8738, 13107, 17476, 21845, 26214, 30583, 34953, 39322, 43691, 48060, 52429, 56798, 61167, 65536, 61167, 56798, 52429, 48060, 43691, 39322, 34953, 30583, 26214, 21845, 17476, 13107, 8738, 4369},
};

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
void apply_filterbank(
    int32_t power_spectrum_frame[NFFT/2 + 1],
    float filterbank[NUM_FILTERS][NFFT/2 + 1],
    float energies[NUM_FILTERS]
) {
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

// Converte frequência em Hz para índice de bin na FFT em Q1.15
static inline int hz_to_bin_q15(int freq, int sample_rate) {
    // ratio = freq / (sample_rate / 2.0)
    int32_t ratio_q15 = ((int32_t)freq << Q15) / (sample_rate / 2);

    // ratio * (NFFT / 2)
    return (ratio_q15 * (NFFT / 2)) >> Q15;
}

void create_filterbank_q15(int16_t filterbank[NUM_FILTERS][NFFT/2 + 1], int sample_rate) {
    int32_t high_freq = sample_rate / 2;
    int32_t high_freq_q15 = high_freq << Q15;

    for (int m = 1; m <= NUM_FILTERS; m++) {
        int32_t m_minus = m - 1;
        int32_t m_center = m;
        int32_t m_plus = m + 1;
        int32_t denom = NUM_FILTERS + 1;

        int32_t f_m_minus_q15 = (m_minus * high_freq_q15) / denom;
        int32_t f_m_q15 = (m_center * high_freq_q15) / denom;
        int32_t f_m_plus_q15 = (m_plus * high_freq_q15) / denom;

        int bin_left = hz_to_bin_q15(f_m_minus_q15 >> Q15, sample_rate);
        int bin_center = hz_to_bin_q15(f_m_q15 >> Q15, sample_rate);
        int bin_right = hz_to_bin_q15(f_m_plus_q15 >> Q15, sample_rate);

        for (int k = bin_left; k < bin_center && k < NFFT/2 + 1; k++) {
            int32_t num = (k - bin_left) << Q15;
            int32_t den = (bin_center - bin_left);
            filterbank[m - 1][k] = (den != 0) ? (int16_t)(num / den) : 0;
        }
        for (int k = bin_center; k < bin_right && k < NFFT/2 + 1; k++) {
            int32_t num = (bin_right - k) << Q15;
            int32_t den = (bin_right - bin_center);
            filterbank[m - 1][k] = (den != 0) ? (int16_t)(num / den) : 0;
        }
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
            sum = q15_16_add(sum, q15_16_mul(power_spectrum_frame[k], filterbank[m][k]));  // acumulando em Q30
        }

        if (sum <= 0) {
            //energies_q15[m] = MIN_LOG_ENERGY_Q15;
            energies_q15[m] = 0x80;
        } else {
            energies_q15[m] = 6 * q15_16_log2(sum);

        }
    }
}



void optimization_filterbank_q15(int32_t filterbank[NUM_FILTERS][OPTIMIZATION_SIZE]) {
    int16_t init_index;
    int16_t end_index;
    int16_t tmp;
    int16_t max_size = 0;

    for (int i = 0; i < NUM_FILTERS; i++) {
        for (init_index = 0; init_index < NFFT / 2 + 1 && !filterbank[i][init_index]; init_index++);

        for (end_index = NFFT / 2; end_index >= 0 && !filterbank[i][end_index]; end_index--);

        int32_t temp[2 + (OPTIMIZATION_SIZE)];
        temp[0] = init_index;
        temp[1] = end_index;

        tmp = temp[1] - temp[0];
        if (max_size < tmp)
            max_size = tmp;


        int k = 2;
        for (int j = init_index; j <= end_index; j++) {
            temp[k++] = filterbank[i][j];
        }
        for (int j = 0; j < NFFT / 2 + 1; j++) {
            filterbank[i][j] = 0;
        }
        for (int j = 0; j < k; j++) {
            filterbank[i][j] = temp[j];
        }
    }
    // Save the optimized filterbank to a file
    const char *filepath = "tables/optimized_filter_bank.dat";
    FILE *file = fopen(filepath, "w");
    if (!file) {
        perror("Erro ao abrir o arquivo para salvar o filterbank otimizado");
        exit(EXIT_FAILURE);
    }


    for (int i = 0; i < NUM_FILTERS; i++) {
        for (int j = 0; j < max_size + 3; j++) {
            fprintf(file, "%d ", filterbank[i][j]);
        }
        fprintf(file, "\n");
    }

    fclose(file);
}

void optimization_apply_q15(
    int32_t power_spectrum_frame[NFFT/2 + 1],
    int32_t energies_q15[NUM_FILTERS]
) {
    for (int i = 0; i < NUM_FILTERS; i++) {
        int32_t sum = 0;

        int init_index = filterbank_15[i][0];
        int end_index = filterbank_15[i][1] + 1;

        for (int k = init_index; k < end_index ; k++) {
            sum = q15_16_add(sum, q15_16_mul(power_spectrum_frame[k], filterbank_15[i][2 + k - init_index]));
        }

        if (sum <= 0) {
            energies_q15[i] = MIN_LOG_ENERGY_Q15_16;
        } else {
            // TODO: tem erro
            energies_q15[i] = q15_16_mul(float_to_q15_16(20.0f), q15_16_log10(sum)) << 1;
            // energies_q15[i] = q15_16_ln(sum);
            // energies_q15[i] = q15_16_mul(float_to_q15_16(6.0f), q15_16_log2(sum));
        }
    }
}