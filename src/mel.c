#include <math.h>
#include <stdint.h>

#define NFFT 512
#define NUM_FILTERS 26

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
    int32_t power_spectrum_frame[NFFT/2 + 1],
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

