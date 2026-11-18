module sram_1r1w #(
    parameter DEPTH = 512,
    parameter WIDTH = 128,
    parameter ADDR_W = $clog2(DEPTH)
) (
    input  logic clk,
    input  logic we,
    input  logic [ADDR_W-1:0] waddr,
    input  logic [WIDTH-1:0] wdata,

    input  logic re,
    input  logic [ADDR_W-1:0] raddr,
    output logic [WIDTH-1:0] rdata
);

    logic [WIDTH-1:0] mem [0:DEPTH-1];

    always_ff @(posedge clk) begin
        if (we) begin
            mem[waddr] <= wdata;
        end
    end

    always_ff @(posedge clk) begin
        if (re) begin
            rdata <= mem[raddr];
        end
    end

endmodule