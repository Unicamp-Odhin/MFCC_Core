#include <math.h>
#include <stdint.h>
#include "mel.h"
#include "q15.h"

#define MIN_LOG_ENERGY_Q15 FLOAT_TO_Q15(-20.0f)

// Converte frequência em Hz para índice de bin na FFT
static inline int hz_to_bin(float freq, int sample_rate) {
    return (int)((freq / (sample_rate / 2.0f)) * (NFFT / 2));
}

// Cria um banco de filtros triangulares lineares
void create_filterbank(float filterbank[NUM_FILTERS][NFFT/2 + 1], int sample_rate) {
    float low_freq = 0.0f;
    float high_freq = sample_rate / 2.0f;

    for (int m = 1; m <= NUM_FILTERS; m++) {
        float f_m_minus = (m - 1) * high_freq / (NUM_FILTERS + 1);
        float f_m       = m       * high_freq / (NUM_FILTERS + 1);
        float f_m_plus  = (m + 1) * high_freq / (NUM_FILTERS + 1);

        int bin_left   = hz_to_bin(f_m_minus, sample_rate);
        int bin_center = hz_to_bin(f_m,       sample_rate);
        int bin_right  = hz_to_bin(f_m_plus,  sample_rate);

        for (int k = bin_left; k < bin_center && k < NFFT/2 + 1; k++) {
            filterbank[m - 1][k] = (float)(k - bin_left) / (bin_center - bin_left);
        }
        for (int k = bin_center; k < bin_right && k < NFFT/2 + 1; k++) {
            filterbank[m - 1][k] = (float)(bin_right - k) / (bin_right - bin_center);
        }
    }
}

// Aplica o banco de filtros a um espectro de potência e calcula as energias
void apply_filterbank(
    int16_t power_spectrum_frame[NFFT/2 + 1],
    float filterbank[NUM_FILTERS][NFFT/2 + 1],
    float energies[NUM_FILTERS]
) {
    for (int m = 0; m < NUM_FILTERS; m++) {
        float sum = 0.0f;
        for (int k = 0; k < NFFT/2 + 1; k++) {
            float val = (float)power_spectrum_frame[k];
            if (val < 0) val = 0.0f;  // evita valores inválidos
            sum += val * filterbank[m][k];
        }

        // Evita logf(0) e logf(negativo)
        if (sum <= 0.0f) {
            energies[m] = -20.0f;  // valor mínimo de fallback
        } else {
            energies[m] = logf(sum);
        }
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