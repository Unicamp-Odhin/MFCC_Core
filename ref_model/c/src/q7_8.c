#include "q7_8.h"

float q7_8_to_float(q7_8 x) {
    return ((float)x) / Q7_SCALE;
}

q7_8 float_to_q7_8(float x)
{
    float scaled = x * Q7_SCALE;

    int32_t temp;

    if (scaled >= 0.0f)
        temp = (int32_t)(scaled + 0.5f);
    else
        temp = (int32_t)(scaled - 0.5f);

    if (temp > 32767)
        temp = 32767;
    else if (temp < -32768)
        temp = -32768;

    return (q7_8)temp;
}


q7_8 q7_8_add(q7_8 a, q7_8 b) {
    return a + b;
}

q7_8 q7_8_sub(q7_8 a, q7_8 b) {
    return a - b;
}

q7_8 q7_8_mul(q7_8 a, q7_8 b) {

    int32_t temp = (int32_t)a * (int32_t)b;

    temp >>= Q8;

    if (temp > 32767)
        temp = 32767;
    else if (temp < -32768)
        temp = -32768;

    return (q7_8)temp;
}



complex_q7_8 q7_8_complex_add(complex_q7_8 a, complex_q7_8 b) {
    return (complex_q7_8){q7_8_add(a.real, b.real), q7_8_add(a.imag, b.imag)};
}

complex_q7_8 q7_8_complex_sub(complex_q7_8 a, complex_q7_8 b) {
    return (complex_q7_8){q7_8_sub(a.real, b.real), q7_8_sub(a.imag, b.imag)};
}

complex_q7_8 q7_8_complex_mul(complex_q7_8 a, complex_q7_8 b) {
    q7_8 real = q7_8_sub(q7_8_mul(a.real, b.real), q7_8_mul(a.imag, b.imag));
    q7_8 imag = q7_8_add(q7_8_mul(a.real, b.imag), q7_8_mul(a.imag, b.real));
    return (complex_q7_8){real, imag};
}
