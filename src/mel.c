#include <float.h>
#include <math.h>
#include <stdint.h>
#include "mel.h"
#include "q15.h"
#include "q15_fft.h"
#include <stdio.h>
#include <stdlib.h>

#define MIN_LOG_ENERGY_Q15 FLOAT_TO_Q15(-20.0f)

// Converte frequência em Hz para índice de bin na FFT
static inline int hz_to_bin(float freq, int sample_rate) {
    return (int)((freq / (sample_rate / 2.0f)) * (NFFT / 2));
}

// Carrega o filterbank da memória a partir de um arquivo
void load_filterbank_from_file(float filterbank[NUM_FILTERS][NFFT/2 + 1]) {
    const char *filepath = "src/filter_bank.dat";
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

    float low_freq_mel = 0.0f;
    float high_freq_mel = 2595.0f * log10f(1.0f + (sample_rate / 2.0f) / 700.0f); // Convert Hz to Mel

    float mel_points;
    float hz_points;
    int bin[NUM_FILTERS + 2];

    // Gera pontos igualmente espaçados na escala Mel
    for (int i = 0; i < NUM_FILTERS + 2; i++) {
        mel_points = low_freq_mel + i * ((high_freq_mel - low_freq_mel) / (NUM_FILTERS + 1));
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

        // Garante estabilidade numérica (evita log de zero ou negativo)
        if (sum <= 0.0f) {
            sum = FLT_EPSILON;
        }
        
        energies[m] = 20.0f * log10f(sum);
    }
}

// Converte frequência em Hz para índice de bin na FFT em Q1.15
static inline int hz_to_bin_q15(int freq, int sample_rate) {
    // ratio = freq / (sample_rate / 2.0)
    int32_t ratio_q15 = ((int32_t)freq << Q15_SHIFT) / (sample_rate / 2);

    // ratio * (NFFT / 2)
    return (ratio_q15 * (NFFT / 2)) >> Q15_SHIFT;
}

void create_filterbank_q15(int16_t filterbank[NUM_FILTERS][NFFT/2 + 1], int sample_rate) {
    int32_t high_freq = sample_rate / 2;
    int32_t high_freq_q15 = high_freq << Q15_SHIFT;

    for (int m = 1; m <= NUM_FILTERS; m++) {
        int32_t m_minus = m - 1;
        int32_t m_center = m;
        int32_t m_plus = m + 1;
        int32_t denom = NUM_FILTERS + 1;

        int32_t f_m_minus_q15 = (m_minus * high_freq_q15) / denom;
        int32_t f_m_q15 = (m_center * high_freq_q15) / denom;
        int32_t f_m_plus_q15 = (m_plus * high_freq_q15) / denom;

        int bin_left = hz_to_bin_q15(f_m_minus_q15 >> Q15_SHIFT, sample_rate);
        int bin_center = hz_to_bin_q15(f_m_q15 >> Q15_SHIFT, sample_rate);
        int bin_right = hz_to_bin_q15(f_m_plus_q15 >> Q15_SHIFT, sample_rate);

        for (int k = bin_left; k < bin_center && k < NFFT/2 + 1; k++) {
            int32_t num = (k - bin_left) << Q15_SHIFT;
            int32_t den = (bin_center - bin_left);
            filterbank[m - 1][k] = (den != 0) ? (int16_t)(num / den) : 0;
        }
        for (int k = bin_center; k < bin_right && k < NFFT/2 + 1; k++) {
            int32_t num = (bin_right - k) << Q15_SHIFT;
            int32_t den = (bin_right - bin_center);
            filterbank[m - 1][k] = (den != 0) ? (int16_t)(num / den) : 0;
        }
    }
}

// Aplica o banco de filtros Q1.15 ao espectro de potência Q1.15
void apply_filterbank_q15(
    int32_t power_spectrum_frame[NFFT/2 + 1],
    int32_t filterbank[NUM_FILTERS][NFFT/2 + 1],
    int32_t energies_q15[NUM_FILTERS]  // Saída em Q1.15 (log)
) {
    for (int m = 0; m < NUM_FILTERS; m++) {
        int32_t sum = 0;

        for (int k = 0; k < NFFT/2 + 1; k++) {
            sum = q15_add(sum, q15_mul(power_spectrum_frame[k], filterbank[m][k]));  // acumulando em Q30
        }

        // Normaliza soma de Q30 para Q15
        // int16_t sum_q15 = (int16_t)(sum >> Q15_SHIFT);
        
        
        // Proteção contra log(0)
        if (sum <= 0) {
            energies_q15[m] = MIN_LOG_ENERGY_Q15;
        } else {
            energies_q15[m] = 6 * q15_log2(sum);
            // energies_q15[m] = q15_log2(sum);

            // energies_q15[m] = q15_mul(float_to_q15(20.0f), q15_log10(sum));
        }
        printf("%d: Energia: %d | Sum: %d\n", m, energies_q15[m], sum);
    }
}
