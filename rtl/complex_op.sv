`timescale 1ns/1ps

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

    function automatic logic signed [63:0] long_mul_fixed(logic signed [63:0] a, logic signed [63:0] b);
        logic signed [127:0] tmp = a * b;
        //tmp = tmp + (1 << ((FIXED_SHIFT * 2) - 1)); // Arredondamento
        if (tmp >= 0)
            tmp = tmp + (1 << 31);
        else
            tmp = tmp - (1 << 31);

        tmp = tmp >> 32; // Desloca para obter o resultado em Q
        
        long_mul_fixed = tmp[63:0]; // Retorna os 32 bits mais significativos
    endfunction


endpackage
`endif // COMPLEX_PKG
