#include "q15_16.h"
#include <inttypes.h>
#include <math.h>
#include <stdint.h>
#include <stdio.h>

q15_16_t float_to_q15_16(float x) {
    // Saturação
    if (x >= 32768.0f) return Q15_16_MAX;
    if (x <= -32768.0f) return Q15_16_MIN;

    float scaled = x * Q15_16_SCALE;
    return (q15_16_t)(scaled + (scaled >= 0 ? 0.5f : -0.5f));
}

float q15_16_to_float(q15_16_t x) {
    return (float)x / (Q15_16_SCALE);
}

q15_16_t q15_16_saturate(int64_t x) {
    if (x > Q15_16_MAX) return Q15_16_MAX;
    if (x < Q15_16_MIN) return Q15_16_MIN;
    return (q15_16_t)x;
}

q15_16_t q15_16_mul(q15_16_t a, q15_16_t b) {
    int64_t temp = (int64_t)a * (int64_t)b;

    if (temp >= 0)
        temp += (1LL << (Q15 - 1));
    else
        temp -= (1LL << (Q15 - 1));

    temp >>= Q15;

    return q15_16_saturate(temp);
}


q15_16_t q15_16_add(q15_16_t a, q15_16_t b) {
    int64_t sum = (int64_t)a + (int64_t)b;
    return q15_16_saturate(sum);
}

q15_16_t q15_16_sub(q15_16_t a, q15_16_t b) {
    int64_t diff = (int64_t)a - (int64_t)b;
    return q15_16_saturate(diff);
}


complex_q15_16 q15_16_complex_add(complex_q15_16 a, complex_q15_16 b) {
    return (complex_q15_16){ q15_16_add(a.real, b.real), q15_16_add(a.imag, b.imag) };
}

complex_q15_16 q15_16_complex_sub(complex_q15_16 a, complex_q15_16 b) {
    return (complex_q15_16){ q15_16_sub(a.real, b.real), q15_16_sub(a.imag, b.imag) };
}

complex_q15_16 q15_16_complex_mul(complex_q15_16 a, complex_q15_16 b) {
    int64_t real_part = (int64_t)a.real * b.real - (int64_t)a.imag * b.imag;
    int64_t imag_part = (int64_t)a.real * b.imag + (int64_t)a.imag * b.real;

    real_part >>= 16;
    imag_part >>= 16;

    q15_16_t real = q15_16_saturate(real_part);
    q15_16_t imag = q15_16_saturate(imag_part);

    return (complex_q15_16){real, imag};
}

q15_16_t q15_16_log2(q15_16_t x) {
    if (x <= 0) return Q15_16_MIN;

    q15_16_t result = 0;
    int int_part = 0;

    if (x >= (1 << Q15)) {
        while (x >= (2 << Q15)) {
            x >>= 1;
            int_part++;
        }
    } else {
        while (x < (1 << Q15)) {
            x <<= 1;
            int_part--;
        }
    }

    result = (q15_16_t)int_part << Q15;

    for (int i = 1; i <= Q15; i++) {
        x = (int64_t)x * x >> Q15;

        if (x >= (2 << Q15)) {
            x >>= 1;
            result |= (1 << (Q15 - i));
        }
    }

    return result;
}


q15_16_t q15_16_log10(q15_16_t x) {
    q15_16_t log2x = q15_16_log2(x);
    return q15_16_mul(log2x , LOG10_2_Q15_16);
}

int32_t q15_16_ln(int32_t x) {
    q15_16_t log2x = q15_16_log2(x);
    return q15_16_mul(log2x, LN2_Q15_16);
}

int32_t q15_cos(int32_t angle_q15) {
    float angle = ((float)angle_q15) / Q15_16_ONE;
    float cos_val = cosf(angle);
    return float_to_q15_16(cos_val);
}