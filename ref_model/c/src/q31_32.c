#include "q31_32.h"
#include <inttypes.h>
#include <math.h>
#include <stdint.h>
#include <stdio.h>

q31_32_t float_to_q31_32(float x) {
    if (x >= Q31_32_MAX_FLOAT) return Q31_32_MAX;
    if (x <= Q31_32_MIN_FLOAT) return Q31_32_MIN;
    double scaled =  (double)x * Q31_32_SCALE;
    return (q31_32_t)(scaled + (scaled >= 0 ? 0.5f : -0.5f));

}

float q31_32_to_float(q31_32_t x) {
    return (float)x / (Q31_32_SCALE);
}

q31_32_t q31_32_saturate(int64_t x) {
    if (x > Q31_32_MAX) return Q31_32_MAX;
    if (x < Q31_32_MIN) return Q31_32_MIN;
    return (q31_32_t)x;
}

q31_32_t q31_32_mul(q31_32_t a, q31_32_t b) {
    __int128 temp = (__int128)a * (__int128)b;
    
    if (temp >= 0)
        temp += (__int128)1 << 31;
    else
        temp -= (__int128)1 << 31;
    
    temp >>= 32;
    
    if (temp > Q31_32_MAX) return Q31_32_MAX;
    if (temp < Q31_32_MIN) return Q31_32_MIN;
    
    return (q31_32_t)temp;
}

q31_32_t q31_32_add(q31_32_t a, q31_32_t b) {
    __int128 sum = (__int128)a + (__int128)b;
    
    if (sum > Q31_32_MAX) return Q31_32_MAX;
    if (sum < Q31_32_MIN) return Q31_32_MIN;
    return (q31_32_t)sum;
}

q31_32_t q31_32_sub(q31_32_t a, q31_32_t b) {
    __int128 diff = (__int128)a - (__int128)b;
    
    if (diff > Q31_32_MAX) return Q31_32_MAX;
    if (diff < Q31_32_MIN) return Q31_32_MIN;
    return (q31_32_t)diff;
}

q31_32_t q31_32_cos(q31_32_t angle_q31_32) {
    float angle = q31_32_to_float(angle_q31_32);
    float cos_val = cosf(angle);
    return float_to_q31_32(cos_val);
}

complex_q31_32 q31_32_complex_add(complex_q31_32 a, complex_q31_32 b) {
    return (complex_q31_32){ q31_32_add(a.real, b.real), q31_32_add(a.imag, b.imag) };
}

complex_q31_32 q31_32_complex_sub(complex_q31_32 a, complex_q31_32 b) {
    return (complex_q31_32){ q31_32_sub(a.real, b.real), q31_32_sub(a.imag, b.imag) };
}

complex_q31_32 q31_32_complex_mul(complex_q31_32 a, complex_q31_32 b) {
    q31_32_t prod1 = q31_32_mul(a.real, b.real);
    q31_32_t prod2 = q31_32_mul(a.imag, b.imag);
    q31_32_t prod3 = q31_32_mul(a.real, b.imag);
    q31_32_t prod4 = q31_32_mul(a.imag, b.real);

    __int128 real_part = (__int128)prod1 - (__int128)prod2;
    __int128 imag_part = (__int128)prod3 + (__int128)prod4;

    if (real_part > Q31_32_MAX) real_part = Q31_32_MAX;
    if (real_part < Q31_32_MIN) real_part = Q31_32_MIN;
    if (imag_part > Q31_32_MAX) imag_part = Q31_32_MAX;
    if (imag_part < Q31_32_MIN) imag_part = Q31_32_MIN;

    return (complex_q31_32){(q31_32_t)real_part, (q31_32_t)imag_part};
}

q31_32_t q31_32_complex_power(complex_q31_32 a) {
    __int128 real_sq = (__int128)a.real * a.real;
    __int128 imag_sq = (__int128)a.imag * a.imag;
    __int128 sum = real_sq + imag_sq;
    sum += (__int128)1 << 31;
    sum >>= 32;
    return q31_32_saturate((int64_t)sum);
}

q31_32_t q31_32_complex_mag2(complex_q31_32 a) {
    __int128 real_sq = (__int128)a.real * a.real;
    __int128 imag_sq = (__int128)a.imag * a.imag;
    __int128 sum = real_sq + imag_sq;

    sum += (__int128)1 << 31;
    sum >>= 32;

    if (sum < 0)
        sum = -1 * sum;

    if (sum > Q31_32_MAX)
        return Q31_32_MAX;

    return (q31_32_t)sum;
}


q31_32_t q31_32_log2(q31_32_t x) {
    if (x <= 0) return Q31_32_MIN;

    q31_32_t result = 0;
    int int_part = 0;

    const q31_32_t ONE = (1LL << Q31);
    const q31_32_t TWO = (2LL << Q31);

    if (x >= ONE) {
        while (x >= TWO) {
            x >>= 1;
            int_part++;
        }
    } else {
        while (x < ONE) {
            x <<= 1;
            int_part--;
        }
    }

    result = ((q31_32_t)int_part) << Q31;

    for (int i = 1; i <= Q31; i++) {
        x = (q31_32_t)(((__int128)x * x) >> Q31);

        if (x >= TWO) {
            x >>= 1;
            result |= (1LL << (Q31 - i));
        }
    }

    return result;
}

q31_32_t q31_32_log10(q31_32_t x) {
    q31_32_t log2x = q31_32_log2(x);
    return q31_32_mul(log2x , LOG10_2_Q31_32);
}