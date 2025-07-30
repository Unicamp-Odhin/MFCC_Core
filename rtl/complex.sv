`ifndef OPCODES_PKG
`define OPCODES_PKG
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

    // Multiplicação complexa com escala para Q1.15
    function automatic complex c_mul(complex a, complex b);
        logic signed [63:0] re_tmp = a.re * b.re - a.im * b.im;
        logic signed [63:0] im_tmp = a.re * b.im + a.im * b.re;

        c_mul.re = re_tmp[63:32];
        c_mul.im = im_tmp[63:32];
    endfunction
endpackage
`endif // OPCODES_PKG