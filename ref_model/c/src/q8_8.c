#include "q8_8.h"

// Converte float para ponto fixo
q8_8 float_to_q8_8(float x) {
    return (q8_8)(x * Q8_SCALE);
}

// Converte ponto fixo para float
float q8_8_to_float(q8_8 x) {
    return ((float)x) / Q8_SCALE;
}

// Soma e subtração são diretas
q8_8 q8_8_add(q8_8 a, q8_8 b) {
    return a + b;
}

q8_8 q8_8_sub(q8_8 a, q8_8 b) {
    return a - b;
}

// Multiplicação: resultado precisa ser ajustado
q8_8 q8_8_mul(q8_8 a, q8_8 b) {
    int32_t temp = (int32_t)a * (int32_t)b;
    return (q8_8)(temp >> Q);
}

complex_q8_8 q8_8_complex_add(complex_q8_8 a, complex_q8_8 b) {
    return (complex_q8_8){q8_8_add(a.real, b.real), q8_8_add(a.imag, b.imag)};
}

complex_q8_8 q8_8_complex_sub(complex_q8_8 a, complex_q8_8 b) {
    return (complex_q8_8){q8_8_sub(a.real, b.real), q8_8_sub(a.imag, b.imag)};
}

complex_q8_8 q8_8_complex_mul(complex_q8_8 a, complex_q8_8 b) {
    q8_8 real = q8_8_sub(q8_8_mul(a.real, b.real), q8_8_mul(a.imag, b.imag));
    q8_8 imag = q8_8_add(q8_8_mul(a.real, b.imag), q8_8_mul(a.imag, b.real));
    return (complex_q8_8){real, imag};
}
