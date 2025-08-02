#ifndef __MEL_H__
#define __MEL_H__

#include "q15.h"
#include "q15_fft.h"

#define NUM_FILTERS 40

void create_filterbank(float filterbank[NUM_FILTERS][NFFT/2 + 1], int sample_rate);
void load_filterbank_from_file(float filterbank[NUM_FILTERS][NFFT/2 + 1]);
void apply_filterbank(
    int32_t power_spectrum_frame[NFFT/2 + 1],
    float filterbank[NUM_FILTERS][NFFT/2 + 1],
    float energies[NUM_FILTERS]
);

void optimization_filterbank_q15(int32_t filterbank[NUM_FILTERS][NFFT/2 + 1]);
void optimization_apply_q15(
    int32_t power_spectrum_frame[NFFT/2 + 1], 
    int32_t filterbank[NUM_FILTERS][NFFT/2 + 1], 
    int8_t energies_q15[NUM_FILTERS]
);

void create_filterbank_q15(int16_t filterbank[NUM_FILTERS][NFFT/2 + 1], int sample_rate);
void apply_filterbank_q15(
    int32_t power_spectrum_frame[NFFT/2 + 1],
    int32_t filterbank[NUM_FILTERS][NFFT/2 + 1],
    int8_t energies_q15[NUM_FILTERS]  // Saída em Q1.15 (log)
);

#endif // !__MEL_H__