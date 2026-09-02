#include "dct.h"
#include <math.h>
#include <stdio.h>
#include "mel.h"


static int32_t cos_lut[NUM_CEPS][NUM_FILTERS];

void save_cos_lut(const char *filename) {
    FILE *fp = fopen(filename, "w");
    if (!fp) {
        perror("fopen");
        return;
    }
    
    for (int k = 0; k < NUM_CEPS; k++) 
        for (int n = 0; n < NUM_FILTERS; n++) 
            fprintf(fp, "%08" PRIx32 "\n", (uint32_t)cos_lut[k][n]);
        
    fclose(fp);
}

// LUT para cosseno: precompute cos(pi * (n + 0.5) * k / num_filters) em ponto fixo
void init_cos_lut(int DCT_COEFF_WIDTH_F) {
    int32_t DCT_SCALE = 1 << DCT_COEFF_WIDTH_F;

    for (int k = 0; k < NUM_CEPS; k++) {
        for (int n = 0; n < NUM_FILTERS; n++) {
            float cos_float = cos(M_PI * (n + 0.5f) * k / NUM_FILTERS);
            cos_lut[k][n] = (int32_t)(cos_float * DCT_SCALE);
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


void dct_fixed(int32_t energies[], int num_filters, int32_t ceps[NUM_CEPS], int  ENERGIES_WIDTH_F, int DCT_COEFF_WIDTH_F) {
    int32_t MEL_SCALE = 1 << ENERGIES_WIDTH_F;
    int32_t DCT_SCALE = 1 << DCT_COEFF_WIDTH_F;

    int32_t factor0 = (int32_t)(sqrt((1.0f / num_filters)) * DCT_SCALE);
    int32_t factork = (int32_t)(sqrt((2.0f / num_filters)) * DCT_SCALE);

    
    for (int k = 0; k < NUM_CEPS; k++) {
        
        int64_t sum = 0;
        
        
        for (int n = 0; n < num_filters; n++) {
            int32_t energy = energies[n];
            if (DCT_COEFF_WIDTH_F > ENERGIES_WIDTH_F)
                energy = energies[n] << (DCT_COEFF_WIDTH_F - ENERGIES_WIDTH_F);
            else if (DCT_COEFF_WIDTH_F < ENERGIES_WIDTH_F)
                energy = energies[n] >> (ENERGIES_WIDTH_F - DCT_COEFF_WIDTH_F);

            
            int64_t mul_tmp = (int64_t)(energy) * (int64_t)(cos_lut[k][n]);
            int64_t mul = (mul_tmp >> DCT_COEFF_WIDTH_F);
            
            sum = sum + mul;

        }
        
        if (k == 0)
            ceps[k] = (sum * (int64_t)factor0) >> DCT_COEFF_WIDTH_F ;
        else
            ceps[k] = (sum * (int64_t)factork) >> DCT_COEFF_WIDTH_F ;

    }
}
