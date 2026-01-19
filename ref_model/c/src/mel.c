// #include <cmath>0
#include <float.h>
#include <math.h>
#include <stdint.h>
#include "mel.h"
#include "q15.h"
#include "q15_fft.h"
#include <stdio.h>
#include <stdlib.h>

#define MIN_LOG_ENERGY_Q15 FLOAT_TO_Q15(-20.0f)


int32_t filterbank_15[NUM_FILTERS][OPTIMIZATION_SIZE] = {
    {1, 2, 2147483647, 1073741824, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {2, 4, 1073741824, 2147483647, 1073741824, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {4, 6, 1073741824, 2147483647, 1073741824, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {6, 8, 1073741824, 2147483647, 1073741824, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {8, 10, 1073741824, 2147483647, 1073741824, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {10, 12, 1073741824, 2147483647, 1073741824, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {12, 15, 1073741824, 2147483647, 1431655808, 715827904, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {14, 18, 715827904, 1431655808, 2147483647, 1431655808, 715827904, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {17, 20, 715827904, 1431655808, 2147483647, 1073741824, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {20, 23, 1073741824, 2147483647, 1431655808, 715827904, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {22, 26, 715827904, 1431655808, 2147483647, 1431655808, 715827904, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {25, 30, 715827904, 1431655808, 2147483647, 1610612736, 1073741824, 536870912, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {28, 33, 536870912, 1073741824, 1610612736, 2147483647, 1431655808, 715827904, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {32, 37, 715827904, 1431655808, 2147483647, 1610612736, 1073741824, 536870912, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {35, 41, 536870912, 1073741824, 1610612736, 2147483647, 1610612736, 1073741824, 536870912, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {39, 45, 536870912, 1073741824, 1610612736, 2147483647, 1610612736, 1073741824, 536870912, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {43, 49, 536870912, 1073741824, 1610612736, 2147483647, 1610612736, 1073741824, 536870912, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {47, 53, 536870912, 1073741824, 1610612736, 2147483647, 1610612736, 1073741824, 536870912, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {51, 58, 536870912, 1073741824, 1610612736, 2147483647, 1717986944, 1288490240, 858993472, 429496736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {55, 63, 429496736, 858993472, 1288490240, 1717986944, 2147483647, 1717986944, 1288490240, 858993472, 429496736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {60, 69, 429496736, 858993472, 1288490240, 1717986944, 2147483647, 1789569664, 1431655808, 1073741824, 715827904, 357913952, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {65, 74, 357913952, 715827904, 1073741824, 1431655808, 1789569664, 2147483647, 1717986944, 1288490240, 858993472, 429496736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {71, 80, 429496736, 858993472, 1288490240, 1717986944, 2147483647, 1789569664, 1431655808, 1073741824, 715827904, 357913952, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {76, 87, 357913952, 715827904, 1073741824, 1431655808, 1789569664, 2147483647, 1840700288, 1533916928, 1227133568, 920350144, 613566784, 306783392, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {82, 94, 306783392, 613566784, 920350144, 1227133568, 1533916928, 1840700288, 2147483647, 1840700288, 1533916928, 1227133568, 920350144, 613566784, 306783392, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {89, 101, 306783392, 613566784, 920350144, 1227133568, 1533916928, 1840700288, 2147483647, 1840700288, 1533916928, 1227133568, 920350144, 613566784, 306783392, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {96, 108, 306783392, 613566784, 920350144, 1227133568, 1533916928, 1840700288, 2147483647, 1840700288, 1533916928, 1227133568, 920350144, 613566784, 306783392, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {103, 116, 306783392, 613566784, 920350144, 1227133568, 1533916928, 1840700288, 2147483647, 1879048192, 1610612736, 1342177280, 1073741824, 805306368, 536870912, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {110, 124, 268435456, 536870912, 805306368, 1073741824, 1342177280, 1610612736, 1879048192, 2147483647, 1879048192, 1610612736, 1342177280, 1073741824, 805306368, 536870912, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {118, 133, 268435456, 536870912, 805306368, 1073741824, 1342177280, 1610612736, 1879048192, 2147483647, 1908874368, 1670265088, 1431655808, 1193046528, 954437184, 715827904, 477218592, 238609296, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {126, 143, 238609296, 477218592, 715827904, 954437184, 1193046528, 1431655808, 1670265088, 1908874368, 2147483647, 1932735232, 1717986944, 1503238528, 1288490240, 1073741824, 858993472, 644245120, 429496736, 214748368, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {135, 153, 214748368, 429496736, 644245120, 858993472, 1073741824, 1288490240, 1503238528, 1717986944, 1932735232, 2147483647, 1932735232, 1717986944, 1503238528, 1288490240, 1073741824, 858993472, 644245120, 429496736, 214748368, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {145, 163, 214748368, 429496736, 644245120, 858993472, 1073741824, 1288490240, 1503238528, 1717986944, 1932735232, 2147483647, 1932735232, 1717986944, 1503238528, 1288490240, 1073741824, 858993472, 644245120, 429496736, 214748368, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {155, 174, 214748368, 429496736, 644245120, 858993472, 1073741824, 1288490240, 1503238528, 1717986944, 1932735232, 2147483647, 1952257920, 1757032064, 1561806336, 1366580480, 1171354752, 976128960, 780903168, 585677376, 390451584, 195225792, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {165, 186, 195225792, 390451584, 585677376, 780903168, 976128960, 1171354752, 1366580480, 1561806336, 1757032064, 1952257920, 2147483647, 1968526720, 1789569664, 1610612736, 1431655808, 1252698752, 1073741824, 894784832, 715827904, 536870912, 357913952, 178956976, 0, 0, 0, 0, 0, 0, 0},
    {176, 198, 178956976, 357913952, 536870912, 715827904, 894784832, 1073741824, 1252698752, 1431655808, 1610612736, 1789569664, 1968526720, 2147483647, 1968526720, 1789569664, 1610612736, 1431655808, 1252698752, 1073741824, 894784832, 715827904, 536870912, 357913952, 178956976, 0, 0, 0, 0, 0, 0},
    {188, 211, 178956976, 357913952, 536870912, 715827904, 894784832, 1073741824, 1252698752, 1431655808, 1610612736, 1789569664, 1968526720, 2147483647, 1982292608, 1817101568, 1651910528, 1486719488, 1321528448, 1156337408, 991146304, 825955264, 660764224, 495573152, 330382112, 165191056, 0, 0, 0, 0, 0},
    {200, 225, 165191056, 330382112, 495573152, 660764224, 825955264, 991146304, 1156337408, 1321528448, 1486719488, 1651910528, 1817101568, 1982292608, 2147483647, 1994091904, 1840700288, 1687308544, 1533916928, 1380525184, 1227133568, 1073741824, 920350144, 766958464, 613566784, 460175072, 306783392, 153391696, 0, 0, 0},
    {213, 240, 153391696, 306783392, 460175072, 613566784, 766958464, 920350144, 1073741824, 1227133568, 1380525184, 1533916928, 1687308544, 1840700288, 1994091904, 2147483647, 2004318080, 1861152512, 1717986944, 1574821376, 1431655808, 1288490240, 1145324672, 1002159040, 858993472, 715827904, 572662336, 429496736, 286331168, 143165584, 0},
    {227, 255, 143165584, 286331168, 429496736, 572662336, 715827904, 858993472, 1002159040, 1145324672, 1288490240, 1431655808, 1574821376, 1717986944, 1861152512, 2004318080, 2147483647, 2004318080, 1861152512, 1717986944, 1574821376, 1431655808, 1288490240, 1145324672, 1002159040, 858993472, 715827904, 572662336, 429496736, 286331168, 143165584}
};

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
void create_filterbank(float filterbank[NUM_FILTERS][NFFT/2 + 1], int sample_rate) {
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
void apply_filterbank(
    int32_t power_spectrum_frame[NFFT/2 + 1],
    float filterbank[NUM_FILTERS][NFFT/2 + 1],
    float energies[NUM_FILTERS]
) {
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

// Converte frequência em Hz para índice de bin na FFT em Q1.15
static inline int hz_to_bin_q15(int freq, int sample_rate) {
    // ratio = freq / (sample_rate / 2.0)
    int32_t ratio_q15 = ((int32_t)freq << Q15_SHIFT) / (sample_rate / 2);

    // ratio * (NFFT / 2)
    return (ratio_q15 * (NFFT / 2)) >> Q15_SHIFT;
}

void create_filterbank_q15(int16_t filterbank[NUM_FILTERS][NFFT/2 + 1], int sample_rate) {
    int32_t high_freq = sample_rate / 2;
    int32_t high_freq_q15 = high_freq << Q15_SHIFT;

    for (int m = 1; m <= NUM_FILTERS; m++) {
        int32_t m_minus = m - 1;
        int32_t m_center = m;
        int32_t m_plus = m + 1;
        int32_t denom = NUM_FILTERS + 1;

        int32_t f_m_minus_q15 = (m_minus * high_freq_q15) / denom;
        int32_t f_m_q15 = (m_center * high_freq_q15) / denom;
        int32_t f_m_plus_q15 = (m_plus * high_freq_q15) / denom;

        int bin_left = hz_to_bin_q15(f_m_minus_q15 >> Q15_SHIFT, sample_rate);
        int bin_center = hz_to_bin_q15(f_m_q15 >> Q15_SHIFT, sample_rate);
        int bin_right = hz_to_bin_q15(f_m_plus_q15 >> Q15_SHIFT, sample_rate);

        for (int k = bin_left; k < bin_center && k < NFFT/2 + 1; k++) {
            int32_t num = (k - bin_left) << Q15_SHIFT;
            int32_t den = (bin_center - bin_left);
            filterbank[m - 1][k] = (den != 0) ? (int16_t)(num / den) : 0;
        }
        for (int k = bin_center; k < bin_right && k < NFFT/2 + 1; k++) {
            int32_t num = (bin_right - k) << Q15_SHIFT;
            int32_t den = (bin_right - bin_center);
            filterbank[m - 1][k] = (den != 0) ? (int16_t)(num / den) : 0;
        }
    }
}


// Aplica o banco de filtros Q1.15 ao espectro de potência Q1.15
void apply_filterbank_q15(
    int32_t power_spectrum_frame[NFFT/2 + 1],
    int32_t filterbank[NUM_FILTERS][NFFT/2 + 1],
    int8_t energies_q15[NUM_FILTERS]  // Saída em Q1.15 (log)
) {
    for (int m = 0; m < NUM_FILTERS; m++) {
        int32_t sum = 0;

        for (int k = 0; k < NFFT/2 + 1; k++) {
            sum = q15_add(sum, q15_mul(power_spectrum_frame[k], filterbank[m][k]));  // acumulando em Q30
        }

        if (sum <= 0) {
            //energies_q15[m] = MIN_LOG_ENERGY_Q15;
            energies_q15[m] = 0x80;
        } else {
            energies_q15[m] = 6 * q15_log2(sum);

        }
    }
}



void optimization_filterbank_q15(int32_t filterbank[NUM_FILTERS][OPTIMIZATION_SIZE]) {
    int16_t init_index;
    int16_t end_index;
    int16_t tmp;
    int16_t max_size = 0;

    for (int i = 0; i < NUM_FILTERS; i++) {
        for (init_index = 0; init_index < NFFT / 2 + 1 && !filterbank[i][init_index]; init_index++);

        for (end_index = NFFT / 2; end_index >= 0 && !filterbank[i][end_index]; end_index--);

        int32_t temp[2 + (OPTIMIZATION_SIZE)];
        temp[0] = init_index;
        temp[1] = end_index;

        tmp = temp[1] - temp[0];
        if (max_size < tmp)
            max_size = tmp;


        int k = 2;
        for (int j = init_index; j <= end_index; j++) {
            temp[k++] = filterbank[i][j];
        }
        for (int j = 0; j < NFFT / 2 + 1; j++) {
            filterbank[i][j] = 0;
        }
        for (int j = 0; j < k; j++) {
            filterbank[i][j] = temp[j];
        }
    }
    // Save the optimized filterbank to a file
    const char *filepath = "tables/optimized_filter_bank.dat";
    FILE *file = fopen(filepath, "w");
    if (!file) {
        perror("Erro ao abrir o arquivo para salvar o filterbank otimizado");
        exit(EXIT_FAILURE);
    }


    for (int i = 0; i < NUM_FILTERS; i++) {
        for (int j = 0; j < max_size + 3; j++) {
            fprintf(file, "%d ", filterbank[i][j]);
        }
        fprintf(file, "\n");
    }

    fclose(file);
}

void optimization_apply_q15(
    int32_t power_spectrum_frame[NFFT/2 + 1],
    int32_t energies_q15[NUM_FILTERS]
) {
    for (int i = 0; i < NUM_FILTERS; i++) {
        int32_t sum = 0;

        int init_index = filterbank_15[i][0];
        int end_index = filterbank_15[i][1] + 1;

        for (int k = init_index; k < end_index ; k++) {
            sum = q15_add(sum, q15_mul(power_spectrum_frame[k], filterbank_15[i][2 + k - init_index]));
        }

        if (sum <= 0) {
            energies_q15[i] = MIN_LOG_ENERGY_Q15;
        } else {
            // energies_q15[i] = q15_log2(sum);
            energies_q15[i] = q15_mul(float_to_q15(6.0f), q15_log2(sum));
        }
    }
}