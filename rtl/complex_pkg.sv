`timescale 1ns/1ps

`ifndef COMPLEX_PKG
`define COMPLEX_PKG
package complex_pkg;
    // Tipo fixo com parte real e imaginária
    localparam FIXED_SHIFT = 31;
    localparam INT64_MAX = 9223372036854775807;
    localparam INT64_MIN = -9223372036854775808;

    typedef struct packed {
        logic signed [31:0] re;
        logic signed [31:0] im;
    } complex;

    typedef struct packed {
        logic signed [63:0] re;
        logic signed [63:0] im;
    } long_complex;

    function automatic complex to_complex(logic signed [63:0] num);
        complex c;
        c.re = num[63:32];
        c.im = num[31:0];
        return c;
    endfunction

    function automatic complex to_long_complex(logic signed [127:0] num);
        complex c;
        c.re = num[127:64];
        c.im = num[63:0];
        return c;
    endfunction

    function automatic logic signed [63:0] to_fixed(complex c);
        logic signed [63:0] num;
        num = {c.re, c.im};
        return num;
    endfunction

    function automatic logic signed [127:0] to_long_fixed(long_complex c);
        logic signed [127:0] num;
        num = {c.re, c.im};
        return num;
    endfunction

    // Soma de números complexos
    function automatic complex c_add(complex a, complex b);
        c_add.re = a.re + b.re;
        c_add.im = a.im + b.im;
    endfunction

    // Subtração de números complexos
    function automatic complex c_sub(complex a, complex b);
        c_sub.re = a.re - b.re;
        c_sub.im = a.im - b.im;
    endfunction

    // Soma de números complexos
    function automatic long_complex long_c_add(long_complex a, long_complex b);
        long_c_add.re = a.re + b.re;
        long_c_add.im = a.im + b.im;
    endfunction

    // Subtração de números complexos
    function automatic long_complex long_c_sub(long_complex a, long_complex b);
        long_c_sub.re = a.re - b.re;
        long_c_sub.im = a.im - b.im;
    endfunction

    function automatic logic signed [31:0] mul_fixed(logic signed [31:0] a, logic signed [31:0] b);
        logic signed [63:0] tmp = a * b;
        tmp = tmp + (1 << (FIXED_SHIFT - 1)); // Arredondamento
        tmp = tmp >> FIXED_SHIFT; // Desloca para obter o resultado em Q
        mul_fixed = tmp[31:0]; // Retorna os 32 bits mais significativos
    endfunction

    // Multiplicação complexa com escala para Q1.15
    function automatic complex c_mul(complex a, complex b);
        c_mul.re = mul_fixed(a.re, b.re) - mul_fixed(a.im, b.im);
        c_mul.im = mul_fixed(a.re, b.im) + mul_fixed(a.im, b.re);
    endfunction

    function automatic logic signed [63:0] long_mul_fixed(logic signed [63:0] a, logic signed [63:0] b);
        logic signed [127:0] tmp = a * b;
        //tmp = tmp + (1 << ((FIXED_SHIFT * 2) - 1)); // Arredondamento
        if (tmp >= 0)
            tmp = tmp + (1 << 31);
        else
            tmp = tmp - (1 << 31);

        tmp = tmp >> 32; // Desloca para obter o resultado em Q

        //if (tmp > INT64_MAX) tmp = INT64_MAX;
        //if (tmp < INT64_MIN) tmp = INT64_MIN;
        
        long_mul_fixed = tmp[63:0]; // Retorna os 32 bits mais significativos
    endfunction

    // Multiplicação complexa com escala para Q1.15
    function automatic complex long_c_mul(long_complex a, long_complex b);
        long_c_mul.re = mul_fixed(a.re, b.re) - mul_fixed(a.im, b.im);
        long_c_mul.im = mul_fixed(a.re, b.im) + mul_fixed(a.im, b.re);
    endfunction

    function automatic logic [63:0] pow2 (logic signed [31:0] num);
        pow2 = num * num;
    endfunction

    function automatic logic [63:0] c_power(complex z);
        c_power = (z.re * z.re) + (z.im * z.im);
    endfunction

    function automatic logic [127:0] long_pow2 (logic signed [63:0] num);
        long_pow2 = num * num;
    endfunction

    function automatic logic [127:0] long_c_power(long_complex z);
        long_c_power = (z.re * z.re) + (z.im * z.im);
    endfunction

endpackage
`endif // COMPLEX_PKG
