`ifndef COMPLEX_PKG
`define COMPLEX_PKG
package complex_pkg;
    // Tipo fixo com parte real e imaginária
    localparam Q30_SHIFT = 31;
    localparam Q30_MAX = 2147483647;
    localparam Q30_MIN = -2147483648;

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

    function logic signed [31:0] saturate(logic signed [63:0] value);
        if (value > Q30_MAX) begin
            saturate = Q30_MAX;
        end else if (value < Q30_MIN) begin
            saturate = Q30_MIN;
        end else begin
            saturate = value[31:0]; // Retorna os 32 bits mais significativos
        end
    endfunction

    function automatic logic signed [31:0] mul_fixed(logic signed [31:0] a, logic signed [31:0] b);
        logic signed [63:0] tmp = a * b;
        tmp = tmp + (1 << (Q30_SHIFT - 1)); // Arredondamento
        tmp = tmp >> Q30_SHIFT; // Desloca para obter o resultado em Q
        return tmp; // Retorna os 32 bits mais significativos
    endfunction

    // Multiplicação complexa com escala para Q1.15
    function automatic complex c_mul(complex a, complex b);

        logic signed [63:0] re_tmp = 
            saturate(mul_fixed(a.re, b.re) - mul_fixed(a.im, b.im));
        logic signed [63:0] im_tmp = 
            saturate(mul_fixed(a.re, b.im) + mul_fixed(a.im, b.re));

        c_mul.re = re_tmp[31:0];
        c_mul.im = im_tmp[31:0];
    endfunction

    function logic [63:0] c_power(complex z);
        c_power = (z.re * z.re) + (z.im * z.im);
    endfunction
endpackage
`endif // COMPLEX_PKG
