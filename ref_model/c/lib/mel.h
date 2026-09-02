#ifndef __MEL_H__
#define __MEL_H__

#include "fft_fp.h"

#define NUM_FILTERS 40

void create_filterbank_float(float filterbank[NUM_FILTERS][NFFT/2 + 1], int sample_rate);
void save_filterbank_to_file(float filterbank[NUM_FILTERS][NFFT/2 + 1]);
void load_filterbank_from_file(float filterbank[NUM_FILTERS][NFFT/2 + 1]);
void apply_filterbank_float(int32_t power_spectrum_frame[NFFT/2 + 1],
    float filterbank[NUM_FILTERS][NFFT/2 + 1], float energies[NUM_FILTERS]);

void create_filterbank(int32_t filterbank[NUM_FILTERS][NFFT/2 + 1], int sample_rate, int F);
void apply_filterbank(int32_t power_spectrum_frame[NFFT/2 + 1], int32_t filterbank[NUM_FILTERS][NFFT/2 + 1], 
    int32_t energies[NUM_FILTERS], int sample_rate, int MEL_COEFF_WIDTH_F, int ENERGIES_WIDTH_F);

int16_t create_op_filterbank(int32_t** filterbank_op, int sample_rate, int F);
void apply_op_filterbank(int32_t power_spectrum_frame[NFFT/2 + 1], int32_t energies[NUM_FILTERS], 
        int sample_rate,  int32_t **filterbank, int MEL_COEFF_WIDTH_F, int ENERGIES_WIDTH_F) ;

void save_op_filterbank(const char *filename, int32_t** filterbank_op, int16_t max_size);

#endif // !__MEL_H__