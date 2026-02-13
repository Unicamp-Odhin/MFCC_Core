#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <math.h> 
#include "fft.h"


complex_q15_16 complex_add(complex_q15_16 a, complex_q15_16 b) {
    complex_q15_16 result = {a.real + b.real, a.imag + b.imag};
    return result;
}

complex_q15_16 complex_sub(complex_q15_16 a, complex_q15_16 b) {
    complex_q15_16 result = {a.real - b.real, a.imag - b.imag};
    return result;
}

complex_q15_16 complex_mul(complex_q15_16 a, complex_q15_16 b) {
    complex_q15_16 result = {
        a.real * b.real - a.imag * b.imag,
        a.real * b.imag + a.imag * b.real
    };
    return result;
}

complex_q15_16 complex_exp(double angle) {
    complex_q15_16 result = {cos(angle), sin(angle)};
    return result;
}

void dft(complex_q15_16* x, complex_q15_16* X, int N) {
    for (int k = 0; k < N; k++) {
        double sum_real = 0.0;
        double sum_imag = 0.0;
        for (int n = 0; n < N; n++) {
            double angle = -2.0 * M_PI * k * n / N;
            sum_real += x[n].real * cos(angle) - x[n].imag * sin(angle);
            sum_imag += x[n].real * sin(angle) + x[n].imag * cos(angle);
        }
        X[k].real = sum_real;
        X[k].imag = sum_imag;
    }
}

void fft_radix2(complex_q15_16* x, complex_q15_16* X, int N) {
    if (N == 1) {
        X[0] = x[0];
        return;
    }

    complex_q15_16* even = (complex_q15_16*)malloc(N / 2 * sizeof(complex_q15_16));
    complex_q15_16* odd  = (complex_q15_16*)malloc(N / 2 * sizeof(complex_q15_16));
    complex_q15_16* even_fft = (complex_q15_16*)malloc(N / 2 * sizeof(complex_q15_16));
    complex_q15_16* odd_fft  = (complex_q15_16*)malloc(N / 2 * sizeof(complex_q15_16));

    for (int i = 0; i < N / 2; i++) {
        even[i] = x[2 * i];
        odd[i]  = x[2 * i + 1];
    }

    fft_radix2(even, even_fft, N / 2);
    fft_radix2(odd,  odd_fft,  N / 2);

    for (int k = 0; k < N / 2; k++) {
        double angle = -2.0 * M_PI * k / N;
        complex_q15_16 twiddle = complex_exp(angle);
        complex_q15_16 t = complex_mul(twiddle, odd_fft[k]);
        X[k] = complex_add(even_fft[k], t);
        X[k + N / 2] = complex_sub(even_fft[k], t);
    }

    free(even);
    free(odd);
    free(even_fft);
    free(odd_fft);
}

unsigned int bit_reverse(unsigned int x, int log2n) {
    unsigned int n = 0;
    for (int i = 0; i < log2n; i++) {
        n <<= 1;
        n |= (x & 1);
        x >>= 1;
    }
    return n;
}

void fft_radix2_iterative(complex_q15_16* x, int N) {
    int log2n = 0;
    int n = N;
    while (n >>= 1) log2n++;

    // Bit reversal
    for (int i = 0; i < N; i++) {
        int j = bit_reverse(i, log2n);
        if (j > i) {
            complex_q15_16 temp = x[i];
            x[i] = x[j];
            x[j] = temp;
        }
    }

    // FFT
    for (int s = 1; s <= log2n; s++) {
        int m = 1 << s;
        double angle_step = -2.0 * M_PI / m;
        for (int k = 0; k < N; k += m) {
            for (int j = 0; j < m / 2; j++) {
                double angle = j * angle_step;
                complex_q15_16 twiddle = complex_exp(angle);
                complex_q15_16 t = complex_mul(twiddle, x[k + j + m / 2]);
                complex_q15_16 u = x[k + j];
                x[k + j] = complex_add(u, t);
                x[k + j + m / 2] = complex_sub(u, t);
            }
        }
    }
}

void rfft(int16_t* x_real, complex_q15_16* X_rfft, int N) {
    complex_q15_16* x_complex = (complex_q15_16*)malloc(N * sizeof(complex_q15_16));
    complex_q15_16* X_full = (complex_q15_16*)malloc(N * sizeof(complex_q15_16));

    for (int i = 0; i < N; i++) {
        x_complex[i].real = (double)x_real[i];
        x_complex[i].imag = 0.0;
    }

    dft(x_complex, X_full, N);

    // Copia só os N/2 + 1 primeiros coeficientes
    for (int i = 0; i <= N / 2; i++) {
        X_rfft[i] = X_full[i];
    }

    free(x_complex);
    free(X_full);
}

double fft_bin_to_hz(int k, double fs, int N) {
    return (fs * k) / N;
}
