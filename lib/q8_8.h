#ifndef __Q8_8_H__
#define __Q8_8_H__

#include <stdint.h>

typedef int16_t q8_8;

#define Q (8)               // número de bits fracionários
#define Q8_SCALE (1 << Q)   // fator de escala (2^Q)

// Converte float para ponto fixo
q8_8 float_to_q8_8(float x);;
// Converte ponto fixo para float
float q8_8_to_float(q8_8 x);
// Soma e subtração são diretas
q8_8 q8_8_add(q8_8 a, q8_8 b);
q8_8 q8_8_sub(q8_8 a, q8_8 b);

// Multiplicação: resultado precisa ser ajustado
q8_8 q8_8_mul(q8_8 a, q8_8 b);

typedef struct {
    q8_8 real;
    q8_8 imag;
} complex_q8_8;

complex_q8_8 q8_8_complex_add(complex_q8_8 a, complex_q8_8 b);
complex_q8_8 q8_8_complex_sub(complex_q8_8 a, complex_q8_8 b);
complex_q8_8 q8_8_complex_mul(complex_q8_8 a, complex_q8_8 b);


#endif // !__Q8_8_H__