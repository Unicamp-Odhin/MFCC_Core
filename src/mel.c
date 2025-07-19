#include <float.h>
#include <math.h>
#include <stdint.h>
#include "mel.h"
#include "q15.h"
#include <stdio.h>
#include <stdlib.h>

#define MIN_LOG_ENERGY_Q15 FLOAT_TO_Q15(-20.0f)

// Converte frequência em Hz para índice de bin na FFT
static inline int hz_to_bin(float freq, int sample_rate) {
    return (int)((freq / (sample_rate / 2.0f)) * (NFFT / 2));
}

// Cria um banco de filtros triangulares lineares
void create_filterbank(float filterbank[NUM_FILTERS][NFFT/2 + 1], int sample_rate) {
    float low_freq = 0.0f;
    float high_freq = 2595 * log10(1 + (sample_rate / 2) / 700); // Convert Hz to Mel using log base 10
    printf("High Frequency (Mel): %f\n", high_freq);

    float bin[NUM_FILTERS + 2];
    float mel_points, hz_points;
    for (int i = 0; i < NUM_FILTERS + 2; i++) {
        mel_points = low_freq + i * ((high_freq - low_freq) / (NUM_FILTERS)); // contem um erro proposital, deveria ser (NUM_FILTERS + 1) ao inves de (NUM_FILTERS)
        printf("%f ", mel_points);
        hz_points = 700 * (pow(10, mel_points / 2595) - 1);
        bin[i] = (floor)(512) * (hz_points / sample_rate);
    }
    
    for (int m = 1; m <= NUM_FILTERS; m++) {

        int bin_left   = bin[m - 1];
        int bin_center = bin[m];
        int bin_right  = bin[m + 1];

        printf("m = %d: ", m);

        for (int k = bin_left; k < bin_center && k < NFFT/2 + 1; k++) {
            filterbank[m - 1][k] = (float)(k - bin_left) / (float) (bin_center - bin_left);
            printf("%d ", k);
        }
        for (int k = bin_center; k < bin_right && k < NFFT/2 + 1; k++) {
            filterbank[m - 1][k] = (float)(bin_right - k) / (float) (bin_right - bin_center);
            printf("%d ", k);
        }
        printf("\n");
    }
    int erro = 0;
    for (int i = 0; i < NUM_FILTERS; i++) {
        for (int j = 0; j < NFFT / 2 + 1; j++) {
            if (isnan(filterbank[i][j])) {
                printf("Erro: Filtro %d, Bin %d\n", i, j);
                erro = 1;
            }
        }
    }
    // if (erro) exit(1);
        
        
}

// Aplica o banco de filtros a um espectro de potência e calcula as energias em dB
void apply_filterbank(
    int16_t power_spectrum_frame[NFFT/2 + 1],
    float filterbank[NUM_FILTERS][NFFT/2 + 1],
    float energies[NUM_FILTERS]
) {
    for (int m = 0; m < NUM_FILTERS; m++) {
        float sum = 0.0f;

        for (int k = 0; k < NFFT/2 + 1; k++) {
            sum += (float)power_spectrum_frame[k] * filterbank[m][k];
        }

        sum = (sum == 0.0f) ? FLT_EPSILON : sum;
        
        energies[m] = 20 * log10f(sum);
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
    int16_t power_spectrum_frame[NFFT/2 + 1],
    int16_t filterbank[NUM_FILTERS][NFFT/2 + 1],
    int16_t energies_q15[NUM_FILTERS]  // Saída em Q1.15 (log)
) {
    for (int m = 0; m < NUM_FILTERS; m++) {
        int32_t sum = 0;

        for (int k = 0; k < NFFT/2 + 1; k++) {
            int16_t val = power_spectrum_frame[k];
            if (val < 0) val = 0;  // Proteção contra negativos

            int16_t filt = filterbank[m][k];
            sum += (int32_t)val * filt;  // acumulando em Q30
        }

        // Normaliza soma de Q30 para Q15
        int16_t sum_q15 = (int16_t)(sum >> Q15_SHIFT);

        // Proteção contra log(0)
        if (sum_q15 <= 0) {
            energies_q15[m] = MIN_LOG_ENERGY_Q15;
        } else {
            energies_q15[m] = q15_ln(sum_q15);
        }
    }
}
