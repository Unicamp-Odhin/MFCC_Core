#include "dct.h"
#include <inttypes.h>
#include <math.h>
#include <stdio.h>
#include "q15_16.h"
#include "mel.h"


// LUT para cosseno: precompute cos(pi * (n + 0.5) * k / num_filters) em Q15
static q15_16_t cos_lut[NUM_CEPS][NUM_FILTERS];

// Deve ser chamada uma vez para preencher a LUT
void init_cos_lut() {
    for (int k = 0; k < NUM_CEPS; k++) {
        for (int n = 0; n < NUM_FILTERS; n++) {
            float cos_float = cos(M_PI * (n + 0.5f) * k / NUM_FILTERS);
            cos_lut[k][n] = float_to_q15_16(cos_float);
            // printf("\t(%d, %d) %2f -> %d -> %2f\n", k, n, cos_float, cos_lut[k][n], q15_16_to_float(cos_lut[k][n]));
        }
    }
}

void dct(float energies[], int num_filters, float ceps[NUM_CEPS]) {
    if(num_filters <= 0) return;

    float factor = sqrt((2.0f / num_filters));

    for (int k = 0; k < NUM_CEPS; k++) {
        float sum = 0.0f;
        for (int n = 0; n < num_filters; n++) {
            float energy = energies[n];

            if (isnan(energies[n]) || isinf(energies[n])) {
                printf("Erro: energies[%d] = %f\n", n, energies[n]);
                energy = 0.0f; // substitui valores inválidos por zero
            }
            sum += energy * cos(M_PI * (n + 0.5f) * k / num_filters);
        }

        float alpha = (k) ? 1.0f : (1.0f / sqrt(2.0f));
        ceps[k] = factor * alpha * sum;
    }
}

void dct_fixed(int32_t energies_q15[], int num_filters, int32_t ceps_q15[NUM_CEPS]) {
    float factor = float_to_q15_16(sqrt((2.0f / num_filters)));
    
    for (int k = 0; k < NUM_CEPS; k++) {
        int32_t sum = 0;
        // printf("k = %d\n", k);
        for (int n = 0; n < num_filters; n++) {
            q15_16_t tmp = q15_16_mul(energies_q15[n], cos_lut[k][n]);
            // printf("\tn=%d: %2f * %2f = %2f \n", n, q15_16_to_float(energies_q15[n]), q15_16_to_float(cos_lut[k][n]), q15_16_to_float(tmp));
            sum = q15_16_add(sum, tmp);
        }
        // printf(" = (%2f)\n\n", q15_16_to_float(sum));
        // float alpha = (k) ? float_to_q15_16(1.0f) : float_to_q15_16(1.0f / sqrt(2.0f));
        // sum = q15_16_mul(factor, sum);
        // sum  = q15_16_mul(alpha, sum);
        ceps_q15[k] = sum;
    }
}
