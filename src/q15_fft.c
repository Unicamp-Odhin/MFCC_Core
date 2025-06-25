#include "q15.h"
#include "q15_fft.h"

int32_t complex_power_q15(complex_q15 x) {
    return ((int32_t)x.real * x.real) + ((int32_t)x.imag * x.imag); // Q30
}

void generate_twiddles(complex_q15* twiddles, int N) {
    for (int k = 0; k < N / 2; k++) {
        float angle = -2.0f * M_PI * k / N;
        twiddles[k].real = (q15_t)(32767 * cosf(angle));
        twiddles[k].imag = (q15_t)(32767 * sinf(angle));
    }
}

void fft_recursive(complex_q15* x, int N, complex_q15* twiddles) {
    if (N <= 1) return;

    int half = N / 2;
    complex_q15* even = malloc(half * sizeof(complex_q15));
    complex_q15* odd  = malloc(half * sizeof(complex_q15));

    for (int i = 0; i < half; i++) {
        even[i] = x[2 * i];
        odd[i]  = x[2 * i + 1];
    }

    fft_recursive(even, half, twiddles);
    fft_recursive(odd,  half, twiddles);

    for (int k = 0; k < half; k++) {
        complex_q15 t = q15_complex_mul(twiddles[(k * (N / 2)) / N], odd[k]);

        x[k]        = q15_complex_add(even[k], t);
        x[k + half] = q15_complex_sub(even[k], t);
    }

    free(even);
    free(odd);
}

void fft_q15_real_power(q15_t* x_real, int N, int32_t* power_out) {
    // 1. Alocar vetor complexo
    complex_q15* x = malloc(NFFT * sizeof(complex_q15));

    for (int i = 0; i < NFFT; i++) {
        if(i >= N)
            x[i].real = 0;
        else
            x[i].real = x_real[i];
        x[i].imag = 0;
    }

    // 2. Gerar twiddles
    complex_q15* twiddles = malloc((NFFT / 2) * sizeof(complex_q15));
    generate_twiddles(twiddles, NFFT);

    // 3. Executar FFT
    fft_recursive(x, NFFT, twiddles);

    // 4. Calcular espectro de potência até N/2 (DC a Nyquist)
    for (int k = 0; k <= NFFT / 2; k++) {
        power_out[k] = complex_power_q15(x[k]);  // Q30
    }

    free(x);
    free(twiddles);
}
