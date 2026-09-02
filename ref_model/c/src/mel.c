// #include <cmath>0
#include <float.h>
#include <math.h>
#include <stdint.h>
#include "mel.h"
#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>

int16_t log2_int(int32_t num){
    int16_t result = -1;

    while (num > 0) {
        num >>= 1;
        result++;
    }

    return result;
}

// Converte frequência em Hz para índice de bin na FFT
static inline int hz_to_bin(float freq, int sample_rate) {
    return (int)((freq / (sample_rate / 2.0f)) * (NFFT / 2));
}

void save_filterbank_to_file(float filterbank[NUM_FILTERS][NFFT/2 + 1]) {
    const char *filepath = "tables/filter_bank.dat";
    FILE *file = fopen(filepath, "w");
    if (!file) {
        perror("Erro ao abrir o arquivo para salvar o filterbank");
        exit(EXIT_FAILURE);
    }

    for (int i = 0; i < NUM_FILTERS; i++) {
        for (int j = 0; j < NFFT / 2 + 1; j++) {
            fprintf(file, "%f ", filterbank[i][j]);
        }
        fprintf(file, "\n");
    }

    fclose(file);
}

// Carrega o filterbank da memória a partir de um arquivo
void load_filterbank_from_file(float filterbank[NUM_FILTERS][NFFT/2 + 1]) {
    const char *filepath = "tables/filter_bank.dat";
    FILE *file = fopen(filepath, "r");
    if (!file) {
        perror("Erro ao abrir o arquivo de filterbank");
        exit(EXIT_FAILURE);
    }

    for (int i = 0; i < NUM_FILTERS; i++) {
        for (int j = 0; j < (NFFT/2 + 1); j++) {
            if (fscanf(file, "%f", &filterbank[i][j]) != 1) {
                fprintf(stderr, "Erro ao ler o arquivo de filterbank na linha %d, coluna %d\n", i, j);
                fclose(file);
                exit(EXIT_FAILURE);
            }
        }
    }

    fclose(file);
}

// Cria um banco de filtros triangulares lineares na escala Mel
void create_filterbank_float(float filterbank[NUM_FILTERS][NFFT/2 + 1], int sample_rate) {
    // Inicializa o filterbank com zeros
    memset(filterbank, 0, NUM_FILTERS * (NFFT/2 + 1) * sizeof(float));

    float high_freq_mel = 2595.0f * log10f(1.0f + (sample_rate / 2.0f) / 700.0f); // Convert Hz to Mel

    float mel_points;
    float hz_points;
    int bin[NUM_FILTERS + 2];

    // Gera pontos igualmente espaçados na escala Mel
    for (int i = 0; i < NUM_FILTERS + 2; i++) {
        mel_points = i * (high_freq_mel / (NUM_FILTERS + 1));
        hz_points = 700.0f * (powf(10.0f, mel_points / 2595.0f) - 1.0f);
        bin[i] = (int)floorf((NFFT + 1) * hz_points / sample_rate);
    }

    // Cria filtros triangulares
    for (int m = 1; m <= NUM_FILTERS; m++) {
        int f_m_minus = bin[m - 1];  // esquerda
        int f_m       = bin[m];      // centro
        int f_m_plus  = bin[m + 1];  // direita

        for (int k = f_m_minus; k < f_m && k < NFFT/2 + 1; k++) {
            filterbank[m - 1][k] = (k - f_m_minus) / (float)(f_m - f_m_minus);
        }

        for (int k = f_m; k < f_m_plus && k < NFFT/2 + 1; k++) {
            filterbank[m - 1][k] = (f_m_plus - k) / (float)(f_m_plus - f_m);
        }
    }

}

// Aplica o banco de filtros a um espectro de potência e calcula as energias em dB
void apply_filterbank_float(int32_t power_spectrum_frame[NFFT/2 + 1], float filterbank[NUM_FILTERS][NFFT/2 + 1], float energies[NUM_FILTERS]) {
    for (int m = 0; m < NUM_FILTERS; m++) {
        float sum = 0.0f;

        for (int k = 0; k < NFFT/2 + 1; k++) {
            sum += power_spectrum_frame[k] * filterbank[m][k];
        }
        if (sum <= 0.0f) {
            sum = FLT_EPSILON;
        }
        energies[m] = 20.0f * log10f(sum);
    }
}

void apply_filterbank(
    int32_t power_spectrum_frame[NFFT/2 + 1], int32_t filterbank[NUM_FILTERS][NFFT/2 + 1], int32_t energies[NUM_FILTERS],
    int sample_rate, int MEL_COEFF_WIDTH_F, int ENERGIES_WIDTH_F) {
    int32_t SCALE = 1 << ENERGIES_WIDTH_F;
    int32_t MIN_LOG_ENERGY = (int32_t)(-20.0f * SCALE);

    for (int m = 0; m < NUM_FILTERS; m++) {
        int64_t sum = 0;

        for (int k = 0; k < NFFT/2 + 1; k++) {
            sum = sum + power_spectrum_frame[k] * filterbank[m][k];
        }

        if (sum <= 0) {
            energies[m] = MIN_LOG_ENERGY;
        } else {
            int64_t temp = (20.0f * 0.301029996 * log2_int((int32_t)(sum >> MEL_COEFF_WIDTH_F) * SCALE));
            energies[m] = (int32_t)(temp);
        }
    }
}

void create_filterbank(int32_t filterbank[NUM_FILTERS][NFFT/2 + 1], int sample_rate, int F) {
    int32_t SCALE = 1 << F;
    float filterbank_float[NUM_FILTERS][NFFT/2 + 1];
    create_filterbank_float(filterbank_float, sample_rate);
    for (int i = 0; i < NUM_FILTERS; i++)
        for (int j = 0; j < NFFT/2 +1; j++)
            filterbank[i][j] = (int32_t)(filterbank_float[i][j] * SCALE);
}


void create_op_filterbank(int32_t** filterbank_op, int sample_rate, int F) {
    int16_t init_index;
    int16_t end_index;
    int16_t tmp;
    int16_t max_size = 0;

#ifdef CONFIG_CREATE_DATABANK
    FILE *fp = fopen("tables_to_rtl/mel_table.hex", "w");
    if (!fp) {
        perror("fopen");
        return;
    }
#endif

    int32_t filterbank[NUM_FILTERS][NFFT/2 + 1];
    create_filterbank(filterbank, sample_rate, F);

    for (int i = 0; i < NUM_FILTERS; i++) {

        for (init_index = 0; 
             init_index < NFFT / 2 + 1 && !filterbank[i][init_index]; 
             init_index++);

        for (end_index = NFFT / 2; 
             end_index >= 0 && !filterbank[i][end_index]; 
             end_index--);

        if (end_index < init_index)
            continue;

        tmp = end_index - init_index + 1;

        if (tmp > max_size)
            max_size = tmp;
    }
    printf("MEL_BANK_SIZE= %d\n", max_size + 2);
    for (int i = 0; i < NUM_FILTERS; i++) {

        filterbank_op[i] = malloc((max_size + 2) * sizeof(int32_t));

        for (init_index = 0; 
             init_index < NFFT / 2 + 1 && !filterbank[i][init_index]; 
             init_index++);

        for (end_index = NFFT / 2; 
             end_index >= 0 && !filterbank[i][end_index]; 
             end_index--);

        int k = 2;

        int start_index = i * (max_size + 2);

        filterbank_op[i][0] = init_index;
        filterbank_op[i][1] = end_index;

        for (int j = init_index; j <= end_index; j++) {
            filterbank_op[i][k++] = filterbank[i][j];
        }

        while (k < max_size + 2) {
            filterbank_op[i][k++] = 0;
        }


#ifdef CONFIG_CREATE_DATABANK
        k = 2;

        fprintf(fp, "%08" PRIx32 "\n", filterbank_op[i][0]);
        fprintf(fp, "%08" PRIx32 "\n", filterbank_op[i][1]);

        for (int j = init_index; j <= end_index; j++) {
            fprintf(fp, "%08" PRIx32 "\n", filterbank_op[i][k]);
            k++;
        }

        while (k < max_size + 2) {
            fprintf(fp, "%08" PRIx32 "\n", filterbank_op[i][k]);
            k++;
        }
#endif
    }

#ifdef CONFIG_CREATE_DATABANK
    fclose(fp);
#endif
}

void apply_op_filterbank(int32_t power_spectrum_frame[NFFT/2 + 1], int32_t energies[NUM_FILTERS], 
                                            int sample_rate, int MEL_COEFF_WIDTH_F, int ENERGIES_WIDTH_F) {
    int32_t SCALE = 1 << ENERGIES_WIDTH_F;
    int32_t MIN_LOG_ENERGY = (int32_t)(-20.0f * SCALE);

    int32_t **filterbank = malloc(NUM_FILTERS * sizeof(int32_t*));

    create_op_filterbank(filterbank, sample_rate, MEL_COEFF_WIDTH_F);

    for (int i = 0; i < NUM_FILTERS; i++) {
        int64_t sum = 0;

        int init_index = filterbank[i][0];
        int end_index = filterbank[i][1] + 1;


        for (int k = init_index; k < end_index ; k++) {
            // como  power_spectrum_frame é inteiro, posso operar direto sem a necessidade de lib
            // pois o resultado está naturalmente em ponto fixo
            printf("sum=%lld | filtro=%d | power=%d | mult=%lld | prt_memory=%d\n", (long long)sum, filterbank[i][2 + k - init_index], power_spectrum_frame[k], (long long)power_spectrum_frame[k] * filterbank[i][2 + k - init_index], (2 + k - init_index) + 31 * i);

            sum = sum + (int64_t)(power_spectrum_frame[k]) * (int64_t)(filterbank[i][2 + k - init_index]);
        }

        if (sum <= 0) {
            energies[i] = MIN_LOG_ENERGY;
        } else {
            int32_t temp = (20.0f * 0.301029996 * SCALE) * log2_int((int32_t)(sum >> MEL_COEFF_WIDTH_F));
            energies[i] = (int32_t)(temp);
        }
    }
}