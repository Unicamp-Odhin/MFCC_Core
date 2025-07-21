#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <math.h>

#define M_PI 3.14159265358979323846
#define Q15_SCALE 32768

void generate_hamming_window_q15(int16_t *window, int frame_size) {
    for (int i = 0; i < frame_size; i++) {
        float w = 0.54 - 0.46 * cos(2 * M_PI * i / (frame_size - 1));
        window[i] = (int16_t)(w * Q15_SCALE); // conversão para Q15
    }
}

int main() {
    int frame_size = 306;
    int16_t window[frame_size];
    generate_hamming_window_q15(window, frame_size);

    // Impressão formato C
    printf("int16_t window[%d] = {\n    ", frame_size);
    for (int i = 0; i < frame_size; i++) {
        printf("%d", window[i]);
        if (i < frame_size - 1) printf(", ");
        if ((i + 1) % 10 == 0) printf("\n    ");
    }
    printf("\n};\n\n");

    // Impressão formato SystemVerilog
    printf("logic signed [15:0] window_sv [%d] = '{\n    ", frame_size);
    for (int i = 0; i < frame_size; i++) {
        printf("%d'sd%d", 16, window[i]);  // ex: 16'sd12345
        if (i < frame_size - 1) printf(", ");
        if ((i + 1) % 8 == 0) printf("\n    ");
    }
    printf("\n};\n");

    return 0;
}
