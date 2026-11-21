module MFCC_Wrapper (
    input wire clk,
    input wire rst_n,
    input wire [15:0] pcm_in,
    input wire pcm_ready_i,
    input wire start_i
);
    wire mfcc_done_o;
    wire [224-1:0] mfcc_data_o;
    MFCC_Core dut (
        .clock(clk), .rst_n(rst_n), .pcm_in(pcm_in),
        .pcm_ready_i(pcm_ready_i), .start_i(start_i),
        .auto_restart_i(1'b1),
        .mfcc_done_o(mfcc_done_o), .mfcc_data_o(mfcc_data_o)
    );
    (* keep *) reg [224-1:0] sink;
    (* keep *) reg done_sink;
    always @(posedge clk) begin
        sink <= mfcc_data_o;
        done_sink <= mfcc_done_o;
    end
endmodule
