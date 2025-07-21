#include <stdio.h>
#include <stdint.h>
#include <math.h>

#define M_PI 3.14159265358979323846
#define Q15_SHIFT 15
#define Q15_MAX 32767
#define Q15_MIN -32768

typedef int16_t q15_t;

#define NUM_FILTERS 40
#define NUM_CEPS    12

q15_t float_to_q15(float x) {
    if (x >= 1.0f) return Q15_MAX;
    if (x <= -1.0f) return Q15_MIN;
    return (q15_t)(x * (1 << Q15_SHIFT));
}

void generate_cos_table_q15(q15_t table[NUM_FILTERS][NUM_CEPS]) {
    for (int n = 0; n < NUM_FILTERS; n++) {
        for (int k = 0; k < NUM_CEPS; k++) {
            float angle = M_PI * (n + 0.5f) * k / NUM_FILTERS;
            float c = cosf(angle);
            table[n][k] = float_to_q15(c);
        }
    }
}

int main() {
    q15_t cos_table[NUM_FILTERS][NUM_CEPS];
    generate_cos_table_q15(cos_table);

    // Imprime formato C
    printf("/* C Format */\n");
    printf("q15_t cos_table[%d][%d] = {\n", NUM_FILTERS, NUM_CEPS);
    for (int n = 0; n < NUM_FILTERS; n++) {
        printf("    { ");
        for (int k = 0; k < NUM_CEPS; k++) {
            printf("%d", cos_table[n][k]);
            if (k < NUM_CEPS - 1) printf(", ");
        }
        printf(" }");
        if (n < NUM_FILTERS - 1) printf(",");
        printf("\n");
    }
    printf("};\n\n");

    // Imprime formato SystemVerilog
    printf("/* SystemVerilog Format */\n");
    printf("logic signed [15:0] cos_table_sv [%d][%d] = '{\n", NUM_FILTERS, NUM_CEPS);
    for (int n = 0; n < NUM_FILTERS; n++) {
        printf("    '{ ");
        for (int k = 0; k < NUM_CEPS; k++) {
            printf("16'sd%d", cos_table[n][k]);
            if (k < NUM_CEPS - 1) printf(", ");
        }
        printf(" }");
        if (n < NUM_FILTERS - 1) printf(",");
        printf("\n");
    }
    printf("};\n");

    return 0;
}
