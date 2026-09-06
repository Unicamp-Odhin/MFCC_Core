`timescale 1ns/1ps

module long_mul_fixed #(
    parameter WIDTH = 64,
    parameter F = 32
) (
    input  logic signed [WIDTH-1:0]  a,
    input  logic signed [WIDTH-1:0]  b,
    output logic signed [WIDTH-1:0]  result
);

    localparam int TWO_W = 2*WIDTH;
    logic signed [TWO_W-1:0] mult_result;
    logic signed [TWO_W-1:0] rounded_result;

    assign mult_result = a * b;

    localparam signed [TWO_W-1:0] ONE = 1;

    always_comb begin
        if (mult_result >= 0)
            rounded_result = mult_result + (ONE <<< (F - 1));
        else
            rounded_result = mult_result - (ONE <<< (F - 1));
    end

    assign result = rounded_result >>> F;

endmodule
