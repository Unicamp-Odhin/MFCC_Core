#include "q15.h"
#include <stdint.h>

// Conversão de float para Q15
q15_t float_to_q15(float x) {
    if (x >= 1.0f) return Q15_MAX;
    if (x <= -1.0f) return Q15_MIN;
    return (q15_t)(x * ((1 << Q15_SHIFT) - 1));
}

// Conversão de Q15 para float
float q15_to_float(q15_t x) {
    return (float)x / (1 << Q15_SHIFT);
}

// Multiplicação Q15 (com arredondamento)
q15_t q15_mul(q15_t a, q15_t b) {
    int64_t temp = (int64_t)a * (int64_t)b;
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
    int64_t real = q15_sub(q15_mul(a.real, b.real), q15_mul(a.imag, b.imag));
    int64_t imag = q15_add(q15_mul(a.real, b.imag), q15_mul(a.imag, b.real));
    return (complex_q15){ real, imag };
}

int32_t q15_log2(int32_t x) {
    int32_t log = 0; 
    while (x > 1) {
        x >>=1;
        log += 1;
    }
    return log;
}

q15_t q15_log10(q15_t x) {
    int32_t log2x = q15_log2(x);
    return (q15_t)(((int32_t)log2x * LOG10_2_Q15) >> Q15_SHIFT);
}

int32_t q15_ln(int32_t x) {
    int32_t log2x = q15_log2(x);
    return (int32_t)(((int32_t)log2x * LN2_Q15) >> Q15_SHIFT);
}

int32_t q15_cos(int32_t angle_q15) {
    float angle = ((float)angle_q15) / Q15_ONE;
    float cos_val = cosf(angle);
    return float_to_q15(cos_val);
}