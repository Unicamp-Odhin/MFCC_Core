#ifndef __FFT_H__
#define __FFT_H__

#ifndef M_PI
#define M_PI 3.14159265358979323846
#endif // !M_PI

typedef struct {
    double real;
    double imag;
} Complex;

Complex complex_add(Complex a, Complex b);
Complex complex_sub(Complex a, Complex b);
Complex complex_mul(Complex a, Complex b);
Complex complex_exp(double angle);
void dft(Complex* x, Complex* X, int N);
void fft_radix2(Complex* x, Complex* X, int N);
unsigned int bit_reverse(unsigned int x, int log2n);
void fft_radix2_iterative(Complex* x, int N);
void rfft(int16_t* x_real, Complex* X_rfft, int N);
double fft_bin_to_hz(int k, double fs, int N);

#endif // __FFT_H__