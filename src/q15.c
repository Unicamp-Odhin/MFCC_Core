#include "q15.h"

// Conversão de float para Q15
q15_t float_to_q15(float x) {
    if (x >= 1.0f) return Q15_MAX;
    if (x <= -1.0f) return Q15_MIN;
    return (q15_t)(x * (1 << Q15_SHIFT));
}

// Conversão de Q15 para float
float q15_to_float(q15_t x) {
    return (float)x / (1 << Q15_SHIFT);
}

// Multiplicação Q15 (com arredondamento)
q15_t q15_mul(q15_t a, q15_t b) {
    int32_t temp = (int32_t)a * (int32_t)b;
    temp += (1 << (Q15_SHIFT - 1));  // arredondamento
    return (q15_t)(temp >> Q15_SHIFT);
}

// Saturação
q15_t q15_saturate(int32_t x) {
    if (x > Q15_MAX) return Q15_MAX;
    if (x < Q15_MIN) return Q15_MIN;
    return (q15_t)x;
}

// Soma Q15 com saturação
q15_t q15_add(q15_t a, q15_t b) {
    int32_t sum = (int32_t)a + (int32_t)b;
    return q15_saturate(sum);
}

// Subtração Q15 com saturação
q15_t q15_sub(q15_t a, q15_t b) {
    int32_t diff = (int32_t)a - (int32_t)b;
    return q15_saturate(diff);
}


complex_q15 q15_complex_add(complex_q15 a, complex_q15 b) {
    return (complex_q15){ q15_saturate(a.real + b.real), q15_saturate(a.imag + b.imag) };
}

complex_q15 q15_complex_sub(complex_q15 a, complex_q15 b) {
    return (complex_q15){ q15_saturate(a.real - b.real), q15_saturate(a.imag - b.imag) };
}

complex_q15 q15_complex_mul(complex_q15 a, complex_q15 b) {
    q15_t real = q15_sub(q15_mul(a.real, b.real), q15_mul(a.imag, b.imag));
    q15_t imag = q15_add(q15_mul(a.real, b.imag), q15_mul(a.imag, b.real));
    return (complex_q15){ real, imag };
}


int16_t q15_log2(int16_t x) {
    if (x <= 0) return 0;  // log(0) ou negativo não definido

    uint16_t ux = x;
    int shift = 0;

    // Normaliza x para intervalo [0.5, 1) -> [16384, 32768)
    while (ux < (Q15_ONE / 2)) {
        ux <<= 1;
        shift--;
    }
    while (ux >= Q15_ONE) {
        ux >>= 1;
        shift++;
    }

    // Agora ux está em [16384, 32768)
    // Aproximação polinomial: log2(ux) ~= y = a*(ux-Q15_ONE) + b*(ux-Q15_ONE)^2
    // Coeficientes aproximados para o intervalo normalizado
    int16_t y = ux - Q15_ONE;
    int16_t a = 23170; // ~0.7071 em Q15
    int16_t b = -11585; // ~-0.3535 em Q15

    int16_t y2 = (int16_t)(((int32_t)y * y) >> Q15_SHIFT);
    int16_t term1 = (int16_t)(((int32_t)a * y) >> Q15_SHIFT);
    int16_t term2 = (int16_t)(((int32_t)b * y2) >> Q15_SHIFT);

    int16_t log2_frac = term1 + term2;

    // log2(x) = shift + log2_frac
    int16_t shift_q15 = shift << Q15_SHIFT;
    return shift_q15 + log2_frac;
}

int16_t q15_ln(int16_t x) {
    int16_t log2x = q15_log2(x);
    return (int16_t)(((int32_t)log2x * LN2_Q15) >> Q15_SHIFT);
}

int16_t q15_cos(int16_t angle_q15) {
    float angle = ((float)angle_q15) / Q15_ONE;
    float cos_val = cosf(angle);
    return float_to_q15(cos_val);
}