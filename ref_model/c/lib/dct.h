#ifndef __DCT_H__
#define __DCT_H__
#include <inttypes.h>


#define NUM_CEPS 12
#ifndef M_PI
#define M_PI 3.14159265358979323846
#endif // !M_PI

void init_cos_lut(int ENERGIES_WIDTH_F);
void dct(float energies[], int num_filters, float ceps[NUM_CEPS]);
void dct_fixed(int32_t energies[], int num_filters, int32_t ceps[NUM_CEPS], int ENERGIES_WIDTH_F, int DCT_COEFF_WIDTH_F);

#endif // !__DCT_H__
