#include "fft_fp.h"
#include <inttypes.h>
#include <stdio.h>
#include <inttypes.h>

static complex_t complex_add(complex_t a, complex_t b) {
    return (complex_t){a.real + b.real, a.imag + b.imag};
}

static complex_t complex_sub(complex_t a, complex_t b) {
    return (complex_t){a.real - b.real, a.imag - b.imag};
}

int64_t mul_fp(int64_t a, int64_t b, int F) {
    __int128 temp = (__int128)a * (__int128)b;
    
    if (temp >= 0)
        temp += (__int128)1 << (F-1);
    else
        temp -= (__int128)1 << (F-1);
    
    temp >>= F;
    
    if (temp > INT64_MAX) return INT64_MAX;
    if (temp < INT64_MIN) return INT64_MIN;
    
    return (int64_t)temp;
}

static complex_t complex_mul(complex_t a, complex_t b, int F) {
    int64_t prod1 = mul_fp(a.real, b.real, F);
    int64_t prod2 = mul_fp(a.imag, b.imag, F);
    int64_t prod3 = mul_fp(a.real, b.imag, F);
    int64_t prod4 = mul_fp(a.imag, b.real, F);

    int64_t real_part = prod1 - prod2;
    int64_t imag_part = prod3 + prod4;

    return (complex_t){real_part, imag_part};
}

void save_twiddles_to_file(const char *filename, complex_t* twiddles, int N) {

    FILE *fp = fopen(filename, "w");
    if (!fp) {
        perror("fopen");
        return;
    }
    for (int k = 0; k < N / 2; k++) {
        fprintf(fp, "%016" PRIx64, twiddles[k].real);
        fprintf(fp, "%016" PRIx64 "\n", twiddles[k].imag);
    }
}

void generate_twiddles(complex_t* twiddles, int N, int F) {
    int32_t SCALE = 1 << F;

    for (int k = 0; k < N / 2; k++) {
        float angle = -2.0f * M_PI * k / N;
        twiddles[k].real = (int32_t)(cosf(angle) * SCALE);
        twiddles[k].imag = (int32_t)(sinf(angle) * SCALE);
    }

}

void fft_iterative(complex_t* x, int N, complex_t* twiddles, int F) {
    int logN = 0;
    for (int temp = N; temp > 1; temp >>= 1) logN++;

    // Bit-reversal permutation
    for (int64_t i = 0, j = 0; i < N; i++) {
        if (i < j) {
            complex_t temp = x[i];
            x[i] = x[j];
            x[j] = temp;
        }
        int64_t mask = N >> 1;
        while (j & mask) {
            j &= ~mask;
            mask >>= 1;
        }
        j |= mask;
    }
    
    // Iterative FFT
    for (int s = 1; s <= logN; s++) {
        int m = 1 << s;
        int half_m = m >> 1;
        int twiddle_step = N / m;

        for (int k = 0; k < N; k += m) {
            for (int j = 0; j < half_m; j++) {
                int twiddle_index = j * twiddle_step;
                complex_t t = complex_mul(twiddles[twiddle_index], x[k + j + half_m], F);
                complex_t u = x[k + j];

                x[k + j] = complex_add(u, t);
                x[k + j + half_m] = complex_sub(u, t);
            }
        }
    }
}

void fft_real_power(int64_t* x_real, int N, int64_t* power_out, complex_t* twiddles, int F_FFT, int F_HAMMING) {
    complex_t* x = (complex_t*)malloc(NFFT * sizeof(complex_t));
    if (!x) return;

    // Preenche com zeros até NFFT (zero-padding)
    for (int i = 0; i < NFFT; i++) {
        if (i < N){
            if (F_HAMMING > F_FFT)
                x[i].real = x_real[i] >> (F_HAMMING - F_FFT);
            else if (F_HAMMING < F_FFT)
                x[i].real = x_real[i] << (F_FFT - F_HAMMING);
            else    
                x[i].real = x_real[i];
        }
        else
            x[i].real = 0;
        x[i].imag = 0;

    }

    fft_iterative(x, NFFT, twiddles, F_FFT); 

    for (int k = 0; k <= NFFT / 2; k++) {

        int64_t temp = mul_fp(x[k].real, x[k].real, F_FFT) + mul_fp(x[k].imag, x[k].imag, F_FFT);

        power_out[k] = (int64_t)(temp / 512); // |X[k]|^2 / 512
    }

    free(x);
}