module MFCC_Wrapper (
    input wire clk
);
    wire rst_n = 1'b1;   // reset amarrado em 1
    wire [15:0] pcm_in = 16'd0;
    wire pcm_ready_i = 1'b0;
    wire start_i = 1'b0;
    wire mfcc_done_o;
    wire [(13*16)-1:0] mfcc_data_o;
(* keep_hierarchy = "yes" *)
    MFCC_Core dut (
        .clk(clk),
        .rst_n(rst_n),
        .pcm_in(pcm_in),
        .pcm_ready_i(pcm_ready_i),
        .start_i(start_i),
        .mfcc_done_o(mfcc_done_o),
        .mfcc_data_o(mfcc_data_o)
    );
endmodule
