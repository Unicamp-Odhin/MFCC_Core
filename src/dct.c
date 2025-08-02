#include "dct.h"
#include <math.h>
#include <stdio.h>
#include "q15.h"
#include "mel.h"


// LUT para cosseno: precompute cos(pi * (n + 0.5) * k / num_filters) em Q15
static int32_t cos_lut[NUM_CEPS][NUM_FILTERS];

// Deve ser chamada uma vez para preencher a LUT
void init_cos_lut() {
    for (int k = 0; k < NUM_CEPS; k++) {
        for (int n = 0; n < NUM_FILTERS; n++) {
            cos_lut[k][n] = float_to_q15(cos(M_PI * (n + 0.5f) * k / NUM_FILTERS));
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

void dct_fixed(int8_t energies_q15[], int num_filters, int16_t ceps_q15[NUM_CEPS]) {
    for (int k = 0; k < NUM_CEPS; k++) {
        int32_t sum = 0;

        for (int n = 0; n < num_filters; n++) {
            sum += q15_mul((int32_t)energies_q15[n], cos_lut[k][n]);
        }

        ceps_q15[k] = sum;
    }
}
