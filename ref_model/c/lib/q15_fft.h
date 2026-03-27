#ifndef __Q15_FFT_H__
#define __Q15_FFT_H__

#include <stdlib.h>
#include <stdint.h>
#include <math.h>
#include <string.h>
#include "q15_16.h"
#include "q31_32.h"

#define NFFT 512

#ifndef M_PI
#define M_PI 3.14159265358979323846
#endif // !M_PI

int64_t complex_power_q30(complex_q15_16 x);
int16_t complex_power_q15(complex_q15_16 x);
void fft_recursive(complex_q15_16* x, int N, complex_q15_16* twiddles, int N_total);
void fft_q15_real_power(int32_t* x_real, int N, int32_t* power_out);


#endif // !__Q15_FFT_H__