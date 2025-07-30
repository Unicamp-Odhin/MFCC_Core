`timescale 1ns/1ps

module FFT #(
    parameter NFFT          = 512,
    parameter INPUT_WIDTH   = 16,
    parameter COMPLEX_WIDTH = 32,
    parameter FRAME_SIZE    = 306
) (
    input  logic clk,
    input  logic rst_n,

    input  logic in_valid,
    input  logic [8:0] frame_ptr_i,
    input  logic [INPUT_WIDTH - 1:0] real_in,

    input  logic start_i
);

import complex_pkg::*;

complex x[NFFT];
complex twiddles[NFFT / 2];

logic larger_frame;
logic equal_frame;
logic [8:0] frame_ptr_reversal;

initial begin
    $readmemh("twiddles.hex", twiddles);
end

always_ff @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        x <= '{default: 0};
    end else begin
        if(in_valid) begin
            if(larger_frame) begin
                x[frame_ptr_reversal].re <= {{16{real_in[INPUT_WIDTH - 1]}}, real_in}; // Extensão de sinal
                x[frame_ptr_reversal].im <= 0; // Parte imaginária é zero para entrada real
            end else begin
                x[frame_ptr_i].re <= {{16{real_in[INPUT_WIDTH - 1]}}, real_in}; // Extensão de sinal
                x[frame_ptr_i].im <= 0; // Parte imaginária é zero para entrada real
            end
        end
    end
end

always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        // Reset logic
    end else begin
        // Main logic
    end
end

assign frame_ptr_reversal = {frame_ptr_i[0], frame_ptr_i[1], frame_ptr_i[2], frame_ptr_i[3], 
    frame_ptr_i[4], frame_ptr_i[5], frame_ptr_i[6], frame_ptr_i[7], frame_ptr_i[8]};
assign larger_frame = (frame_ptr_reversal > frame_ptr_i);
assign equal_frame  = (frame_ptr_reversal == frame_ptr_i);

endmodule