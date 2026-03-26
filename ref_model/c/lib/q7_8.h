#ifndef __Q7_8_H__
#define __Q7_8_H__
#include <stdint.h>
// Resolution: 3.9063e-3
// Min Value:  -128.0000
// Max Value:   127.9961 

typedef int16_t q7_8;

#define Q8 (8)
#define Q7_SCALE (1 << Q8)

float q7_8_to_float(q7_8 x);

q7_8 float_to_q7_8(float x);
q7_8 q7_8_add(q7_8 a, q7_8 b);
q7_8 q7_8_sub(q7_8 a, q7_8 b);
q7_8 q7_8_mul(q7_8 a, q7_8 b);

typedef struct {
    q7_8 real;
    q7_8 imag;
} complex_q7_8;

complex_q7_8 q7_8_complex_add(complex_q7_8 a, complex_q7_8 b);
complex_q7_8 q7_8_complex_sub(complex_q7_8 a, complex_q7_8 b);
complex_q7_8 q7_8_complex_mul(complex_q7_8 a, complex_q7_8 b);


#endif // !__Q7_8_H__