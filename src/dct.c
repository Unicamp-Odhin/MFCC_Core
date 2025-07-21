#include "dct.h"
#include <math.h>
#include <stdio.h>
#include "q15.h"
#include "mel.h"

#define Q15_SQRT2_INV FLOAT_TO_Q15(1.0f / 1.41421356f)  // 1/sqrt(2) em Q1.15
#define Q15_FACTOR FLOAT_TO_Q15(0.2773500981126146f)    // sqrt(2 / NUM_FILTERS) se NUM_FILTERS = 26


/*
void dct(float energies[], int num_filters, float ceps[NUM_CEPS]) {
    for (int k = 0; k < NUM_CEPS; k++) {
        float sum = 0.0f;
        for (int n = 0; n < num_filters; n++) {
            sum += energies[n] * cos(M_PI * k * (n + 0.5f) / num_filters);
        }
        ceps[k] = sum * sqrt(2.0f / num_filters);
    }
}
*/

// LUT para cosseno: precompute cos(pi * (n + 0.5) * k / num_filters) em Q15
static int16_t cos_lut[NUM_CEPS][NUM_FILTERS];

// Deve ser chamada uma vez para preencher a LUT
void init_cos_lut() {
    for (int k = 0; k < NUM_CEPS; k++) {
        for (int n = 0; n < NUM_FILTERS; n++) {
            float angle = 3.14159265f * (n + 0.5f) * k / NUM_FILTERS;
            float c = cosf(angle);
            cos_lut[k][n] = FLOAT_TO_Q15(c);
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


// DCT em Q1.15
void dct_q15(int16_t energies_q15[], int num_filters, int16_t ceps_q15[NUM_CEPS]) {
    if (num_filters <= 0) return;

    // factor = sqrt(2.0 / num_filters)
    float factor_f = sqrtf(2.0f / num_filters);
    int16_t factor_q15 = float_to_q15(factor_f);

    for (int k = 0; k < NUM_CEPS; k++) {
        int32_t sum = 0;

        for (int n = 0; n < num_filters; n++) {
            int16_t cos_q15 = cos_table[n][k];
            int16_t prod_q15 = q15_mul(energies_q15[n], cos_q15);

            sum += prod_q15;
        }

        // alpha = 1.0 / sqrt(2) se k == 0, senão 1.0
        int16_t alpha_q15 = (k == 0) ? float_to_q15(1.0f / sqrtf(2.0f)) : Q15_ONE;

        int32_t temp = q15_mul(factor_q15, alpha_q15);
        ceps_q15[k] = q15_mul(temp, (int16_t)(sum >> Q15_SHIFT));
    }
}
/*

void dct_q15(int16_t energies_q15[], int num_filters, int16_t ceps_q15[NUM_CEPS]) {
    for (int k = 0; k < NUM_CEPS; k++) {
        int32_t sum = 0;

        for (int n = 0; n < num_filters; n++) {
            sum += q15_mul(energies_q15[n], cos_lut[k][n]);
        }

        int16_t alpha_q15 = (k == 0) ? Q15_SQRT2_INV : Q15_ONE;
        int16_t temp = q15_mul(Q15_FACTOR, alpha_q15);
        ceps_q15[k] = q15_mul(temp, (int16_t)(sum >> Q15_SHIFT));
    }
}
*/