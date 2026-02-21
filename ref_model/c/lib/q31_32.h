#ifndef __Q31_32_FRAC_BITS_H__
#define __Q31_32_FRAC_BITS_H__

#include <stdint.h>
#include <stdlib.h>
#include <math.h>



// Sign Bit: 1
// Integer Bits: 31
// Fractional Bits: 32 

// Resolution: 2.3283e-10
// Min Value: -2147483648.0000
// Max Value: 2147483648.0000 

typedef int64_t q31_32_t;

#define Q31 32
#define Q31_32_FRAC_BITS 32
#define Q31_32_SCALE     (1LL << Q31_32_FRAC_BITS)
#define Q31_32_ONE       ((int64_t)1 << Q31_32_FRAC_BITS)

#define Q31_32_MAX  INT64_MAX
#define Q31_32_MIN  INT64_MIN

#define Q31_32_MAX_FLOAT  ((float)Q31_32_MAX / Q31_32_SCALE)
#define Q31_32_MIN_FLOAT  ((float)Q31_32_MIN / Q31_32_SCALE)

#define LOG10_2_Q31_32 1292913988  //log10(2) ~= 0.301029996


q31_32_t float_to_q31_32(float x);

float q31_32_to_float(q31_32_t x);

q31_32_t q31_32_mul(q31_32_t a, q31_32_t b);

q31_32_t q31_32_saturate(int64_t x);

q31_32_t q31_32_add(q31_32_t a, q31_32_t b);

q31_32_t q31_32_sub(q31_32_t a, q31_32_t b);

q31_32_t q31_32_cos(q31_32_t angle_q31_32);

typedef struct {
    q31_32_t real;
    q31_32_t imag;
} complex_q31_32;

complex_q31_32 q31_32_complex_add(complex_q31_32 a, complex_q31_32 b);

complex_q31_32 q31_32_complex_sub(complex_q31_32 a, complex_q31_32 b);

complex_q31_32 q31_32_complex_mul(complex_q31_32 a, complex_q31_32 b);

q31_32_t q31_32_complex_power(complex_q31_32 a);

q31_32_t q31_32_complex_mag2(complex_q31_32 a);


q31_32_t q31_32_log2(q31_32_t x);
q31_32_t q31_32_log10(q31_32_t x);


#endif 