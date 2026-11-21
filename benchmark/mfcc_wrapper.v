module MFCC_Wrapper (
    input wire clk,
    input wire rst_n,
    input wire [15:0] pcm_in,
    input wire pcm_ready_i,
    input wire start_i,

    output wire mfcc_done_o,
    output wire [383:0] mfcc_data_o
);

    MFCC_Core dut (
        .clock          (clk),
        .rst_n          (rst_n),
        .pcm_in         (pcm_in),
        .pcm_ready_i    (pcm_ready_i),
        .start_i        (start_i),
        .auto_restart_i (1'b1),
        .mfcc_done_o    (mfcc_done_o),
        .mfcc_data_o    (mfcc_data_o)
    );

endmodule