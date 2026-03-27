#include "q15_16.h"
#include "q31_32.h"
#include <inttypes.h>
#include <stdio.h>
#include "q15_fft.h"
#include <inttypes.h>


void generate_twiddles(complex_q31_32* twiddles, int N) {
    // Essa parte poderia ser otimizada se usarmos q1.30,
    // pois sabemos que seno e cos só vão até 1, logo 1 bit 
    // para a parte inteira seria suficiênte

#ifdef CONFIG_CREATE_DATABANK
    FILE *fp = fopen("tables_to_rtl/twiddles_table.hex", "w");
    if (!fp) {
        perror("fopen");
        return;
    }
#endif

    for (int k = 0; k < N / 2; k++) {
        float angle = -2.0f * M_PI * k / N;
        twiddles[k].real = float_to_q31_32(cosf(angle));
        twiddles[k].imag = float_to_q31_32(sinf(angle));

#ifdef CONFIG_CREATE_DATABANK
        // TODO verificar como o rtl ta carregando
        fprintf(fp, "%016" PRIx64 "\n", twiddles[k].real);
        fprintf(fp, "%016" PRIx64 "\n", twiddles[k].imag);
#endif

    }
}

void fft_iterative(complex_q31_32* x, int N, complex_q31_32* twiddles) {
    int logN = 0;
    for (int temp = N; temp > 1; temp >>= 1) logN++;

    // Bit-reversal permutation
    for (int64_t i = 0, j = 0; i < N; i++) {
        if (i < j) {
            complex_q31_32 temp = x[i];
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
                complex_q31_32 t = q31_32_complex_mul(twiddles[twiddle_index], x[k + j + half_m]);
                complex_q31_32 u = x[k + j];

                x[k + j] = q31_32_complex_add(u, t);
                x[k + j + half_m] = q31_32_complex_sub(u, t);
            }
        }
    }
}

void fft_q15_real_power(int32_t* x_real, int N, int32_t* power_out) {
    // Aloca vetor complexo de tamanho NFFT

    complex_q31_32* x = (complex_q31_32*)malloc(NFFT * sizeof(complex_q31_32));
    if (!x) return;

    // Preenche com zeros até NFFT (zero-padding)
    for (int i = 0; i < NFFT; i++) {
        if (i < N)
            x[i].real = (int64_t)x_real[i] << 32; // Q31.32
        else
            x[i].real = 0;
        x[i].imag = 0;
        // printf("%d -> %ld %ld\n", x_real[i], x[i].real, x[i].imag);

    }

    // Gera twiddles (apenas metade, devido à simetria)
    complex_q31_32* twiddles = (complex_q31_32*)malloc((NFFT / 2) * sizeof(complex_q31_32));
    if (!twiddles) {
        free(x);
        return;
    }
    generate_twiddles(twiddles, NFFT);  

    fft_iterative(x, NFFT, twiddles); 

    for (int k = 0; k <= NFFT / 2; k++) {
        int64_t temp = ((int64_t)(x[k].real >> 32) * (int64_t)(x[k].real >> 32) +
                        (int64_t)(x[k].imag >> 32) * (int64_t)(x[k].imag >> 32));  
        power_out[k] = (int32_t)(temp / 512); // |X[k]|^2 / 512
    }

    free(x);
    free(twiddles);
}