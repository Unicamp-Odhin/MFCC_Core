#ifndef __Q15_H__
#define __Q15_H__

#include <stdint.h>
#include <stdlib.h>
#include <math.h>


// Resolution: 1.5259e-5
// Min Value: -32768.0000
// Max Value: 32768.0000 

typedef int32_t q15_16_t;

#define Q15 (16)
#define Q15_16_SCALE (1 << Q15)

#define Q15_16_MAX 2147483647
#define Q15_16_MIN -2147483647
#define LN2_Q15_16 45423      // ln(2) ~= 0.6931 em Q15_16
#define LOG10_2_Q15_16 19728  //log10(2) ~= 0.301029996
#define Q15_16_ONE (1 << (Q15 - 1))
#define FLOAT_TO_Q15_16(x) ((q15_16_t)((x) * Q15_16_ONE))

q15_16_t float_to_q15_16(float x);

float q15_16_to_float(q15_16_t x);

q15_16_t q15_16_mul(q15_16_t a, q15_16_t b);

q15_16_t q15_16_saturate(int64_t x);

q15_16_t q15_16_add(q15_16_t a, q15_16_t b);

q15_16_t q15_16_sub(q15_16_t a, q15_16_t b);

typedef struct {
    q15_16_t real;
    q15_16_t imag;
} complex_q15_16;

complex_q15_16 q15_16_complex_add(complex_q15_16 a, complex_q15_16 b);

complex_q15_16 q15_16_complex_sub(complex_q15_16 a, complex_q15_16 b);

complex_q15_16 q15_16_complex_mul(complex_q15_16 a, complex_q15_16 b);

int32_t q15_16_pow(int32_t x, int32_t a, int32_t b);

q15_16_t q15_16_log2(q15_16_t x);

q15_16_t q15_16_ln(q15_16_t x);

q15_16_t q15_16_log10(q15_16_t x);

q15_16_t q15_16_cos(q15_16_t angle_q15_16);

#endif // !__Q15_H__