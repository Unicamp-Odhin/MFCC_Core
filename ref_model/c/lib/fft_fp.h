#ifndef __FFT_PF_H__
#define __FFT_PF_H__

#include <stdlib.h>
#include <stdint.h>
#include <math.h>
#include <string.h>

#define NFFT 512

#ifndef M_PI
#define M_PI 3.14159265358979323846
#endif // !M_PI

typedef struct {
    int64_t real;
    int64_t imag;
} complex_t;


int64_t complex_power_q30(complex_t x);
int16_t complex_power_q15(complex_t x);

void generate_twiddles(complex_t* twiddles, int N, int F);
void save_twiddles_to_file(const char *filename, complex_t* twiddles, int N);

void fft_recursive(complex_t* x, int N, complex_t* twiddles, int N_total);
void fft_real_power(int32_t* x_real, int N, int32_t* power_out, complex_t* twiddles, int F);


#endif // !__FFT_PF_H__