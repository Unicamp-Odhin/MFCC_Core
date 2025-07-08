#include "dct.h"
#include <math.h>
#include <stdio.h>

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