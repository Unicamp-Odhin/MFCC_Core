#ifndef __FFT_H__
#define __FFT_H__

#ifndef M_PI
#define M_PI 3.14159265358979323846
#endif // !M_PI

typedef struct {
    double real;
    double imag;
} complex_q15_16;

complex_q15_16 complex_add(complex_q15_16 a, complex_q15_16 b);
complex_q15_16 complex_sub(complex_q15_16 a, complex_q15_16 b);
complex_q15_16 complex_mul(complex_q15_16 a, complex_q15_16 b);
complex_q15_16 complex_exp(double angle);
void dft(complex_q15_16* x, complex_q15_16* X, int N);
void fft_radix2(complex_q15_16* x, complex_q15_16* X, int N);
unsigned int bit_reverse(unsigned int x, int log2n);
void fft_radix2_iterative(complex_q15_16* x, int N);
void rfft(int16_t* x_real, complex_q15_16* X_rfft, int N);
double fft_bin_to_hz(int k, double fs, int N);

#endif // __FFT_H__