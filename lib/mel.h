#ifndef __MEL_H__
#define __MEL_H__

#include "q15_fft.h"

#define NFFT 512 
#define NUM_FILTERS 40

void create_filterbank(float filterbank[NUM_FILTERS][NFFT/2 + 1], int sample_rate);
void apply_filterbank(
    int16_t power_spectrum_frame[NFFT/2 + 1],
    float filterbank[NUM_FILTERS][NFFT/2 + 1],
    float energies[NUM_FILTERS]
);


#endif // !__MEL_H__