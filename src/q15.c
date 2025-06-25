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
