`timescale 1ns/1ps

`ifndef MFCC_PKG
`define MFCC_PKG
package mfcc_pkg;

    typedef struct packed {
        logic [15:0] mfcc_sample;
    } mfcc_data_t;

endpackage
`endif // MFCC_PKG
