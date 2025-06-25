#ifndef __Q15_FFT_H__
#define __Q15_FFT_H__

#include <stdlib.h>
#include <stdint.h>
#include <math.h>
#include <string.h>
#include "q15.h"

#define NFFT 512

#ifndef M_PI
#define M_PI 3.14159265358979323846
#endif // !M_PI

int32_t complex_power_q15(complex_q15 x);
void generate_twiddles(complex_q15* twiddles, int N);
void fft_recursive(complex_q15* x, int N, complex_q15* twiddles);
void fft_q15_real_power(q15_t* x_real, int N, int32_t* power_out);


#endif // !__Q15_FFT_H__