#ifndef __DCT_H__
#define __DCT_H__

#include "q15_fft.h"

#define NUM_CEPS 12
#ifndef M_PI
#define M_PI 3.14159265358979323846
#endif // !M_PI

void dct(float energies[], int num_filters, float ceps[NUM_CEPS]);
void dct_q15(int16_t energies_q15[], int num_filters, int16_t ceps_q15[NUM_CEPS]);

#endif // !__DCT_H__
