#include "q15.h"
#include <inttypes.h>
#include <stdio.h>
#include "q15_fft.h"

int64_t complex_power_q30(complex_q15 x) {
    return ((int64_t)x.real * x.real) + ((int64_t)x.imag * x.imag); // Q30
}

int16_t complex_power_q15(complex_q15 x) {
    int32_t real_sq = (int32_t)x.real * x.real; // Q15 * Q15 = Q30
    int32_t imag_sq = (int32_t)x.imag * x.imag; // Q30
    int32_t sum = real_sq + imag_sq;            // Q30
    int16_t result = (int16_t)(sum >> 15);      // Q30 -> Q15
    return result;
}

void generate_twiddles(complex_q15* twiddles, int N) {
    for (int k = 0; k < N / 2; k++) {
        float angle = -2.0f * M_PI * k / N;
        // A versão comentada gera um errar os coeficientes, mas gera um grafico visualmente mais próximo do programa em python
        // twiddles[k].real = (int32_t)((Q15_MAX) * cosf(angle)); // Scale to Q15
        // twiddles[k].imag = (int32_t)((Q15_MAX) * sinf(angle)); // Scale to Q15
        twiddles[k].real = float_to_q15(cosf(angle)); // Scale to Q15
        twiddles[k].imag = float_to_q15(sinf(angle)); // Scale to Q15
    }
}

void save_twiddles(complex_q15* twiddles, int N) {
    FILE* file = fopen("data/twiddles.hex", "w");
    if (!file) {
        perror("Failed to open file for saving twiddles");
        return;
    }

    for (int i = 0; i < N / 2; i++) {
        fprintf(file, "%.8X%.8X\n", twiddles[i].real, twiddles[i].imag);
    }

    fclose(file);
}

void fft_iterative(complex_q15* x, int N, complex_q15* twiddles) {
    int logN = 0;
    for (int temp = N; temp > 1; temp >>= 1) logN++;

    //printf("FFT Iterative: N = %d, logN = %d\n", N, logN);

    // Bit-reversal permutation
    for (int i = 0, j = 0; i < N; i++) {
        if (i < j) {
            //printf("Swapping indices %d and %d\n", i, j);
            complex_q15 temp = x[i];
            x[i] = x[j];
            x[j] = temp;
        }
        int mask = N >> 1;
        while (j & mask) {
            j &= ~mask;
            mask >>= 1;
        }
        j |= mask;
    }

    // Iterative FFT
    for (int s = 1; s <= logN; s++) {
        int m = 1 << s; // 2^s
        int half_m = m >> 1;
        int twiddle_step = N / m;

        for (int k = 0; k < N; k += m) {
            for (int j = 0; j < half_m; j++) {
                int twiddle_index = j * twiddle_step;
                complex_q15 t = q15_complex_mul(twiddles[twiddle_index], x[k + j + half_m]);
                complex_q15 u = x[k + j];

                x[k + j] = q15_complex_add(u, t);
                x[k + j + half_m] = q15_complex_sub(u, t);
            }
        }
    }
}

void fft_q15_real_power(q15_t* x_real, int N, int32_t* power_out) {
    // 1. Alocar vetor complexo
    complex_q15* x = (complex_q15*)malloc(NFFT * sizeof(complex_q15));

    for (int i = 0; i < NFFT; i++) {
        if (i >= N)
            x[i].real = 0;
        else
            x[i].real = x_real[i];
        x[i].imag = 0;
    }
    // 2. Gerar twiddles
    complex_q15* twiddles = (complex_q15*)malloc((NFFT / 2) * sizeof(complex_q15));
    generate_twiddles(twiddles, NFFT);
    save_twiddles(twiddles, NFFT);

    // 3. Executar FFT
    fft_iterative(x, NFFT, twiddles);

    // 4. Calcular espectro de potência até N/2 (DC a Nyquist)
    for (int k = 0; k <= NFFT / 2; k++) {
        int64_t temppower = complex_power_q30(x[k]); // Q30
        // printf("x[%d] = {real: %" PRId16 ", imag: %" PRId16 "}, pow = %" PRId64 "\n", 
        //        k, x[k].real, x[k].imag, temppower);

        // Ajuste do ganho (*1/512 = >>9)
        temppower = temppower >> 9;  // Q30->Q21

        power_out[k] = (int32_t)temppower; // Guarda em Q21
    }

    free(x);
    free(twiddles);
}
