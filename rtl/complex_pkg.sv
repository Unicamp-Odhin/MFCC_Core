`ifndef COMPLEX_PKG
`define COMPLEX_PKG
package complex_pkg;
    // Tipo fixo com parte real e imaginária
    localparam Q30_SHIFT = 31;

    typedef struct packed {
        logic signed [31:0] re;
        logic signed [31:0] im;
    } complex;

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

    function automatic logic signed [31:0] mul_fixed(logic signed [31:0] a, logic signed [31:0] b);
        logic signed [63:0] tmp = a * b;
        tmp = tmp + (1 << (Q30_SHIFT - 1)); // Arredondamento
        tmp = tmp >> Q30_SHIFT; // Desloca para obter o resultado em Q
        mul_fixed = tmp; // Retorna os 32 bits mais significativos
    endfunction

    // Multiplicação complexa com escala para Q1.15
    function automatic complex c_mul(complex a, complex b);
        c_mul.re = mul_fixed(a.re, b.re) - mul_fixed(a.im, b.im);
        c_mul.im = mul_fixed(a.re, b.im) + mul_fixed(a.im, b.re);
    endfunction

    function automatic logic [63:0] pow2 (logic signed [31:0] num);
        pow2 = num * num;
    endfunction

    function automatic logic [63:0] c_power(complex z);
        c_power = (z.re * z.re) + (z.im * z.im);
    endfunction
endpackage
`endif // COMPLEX_PKG
