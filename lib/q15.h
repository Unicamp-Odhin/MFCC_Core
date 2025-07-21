#ifndef __Q15_H__
#define __Q15_H__

#include <stdint.h>
#include <stdlib.h>
#include <math.h>

typedef int32_t q15_t;

#define Q15_SHIFT 15
#define Q15_MAX 32767
#define Q15_MIN -32768
#define LN2_Q15 22713  // ln(2) ~= 0.6931 em Q15
#define Q15_ONE (1 << Q15_SHIFT)
#define FLOAT_TO_Q15(x) ((int16_t)((x) * Q15_ONE + 0.5f))

// Conversão de float para Q15
q15_t float_to_q15(float x);

// Conversão de Q15 para float
float q15_to_float(q15_t x);

// Multiplicação Q15 (com arredondamento)
q15_t q15_mul(q15_t a, q15_t b);

// Saturação
q15_t q15_saturate(int32_t x);

// Soma Q15 com saturação
q15_t q15_add(q15_t a, q15_t b);

// Subtração Q15 com saturação
q15_t q15_sub(q15_t a, q15_t b);

typedef struct {
    q15_t real;
    q15_t imag;
} complex_q15;

complex_q15 q15_complex_add(complex_q15 a, complex_q15 b);

complex_q15 q15_complex_sub(complex_q15 a, complex_q15 b);

complex_q15 q15_complex_mul(complex_q15 a, complex_q15 b);

int16_t q15_log2(int16_t x);

int16_t q15_ln(int16_t x);

int16_t q15_cos(int16_t angle_q15);

#endif // !__Q15_H__