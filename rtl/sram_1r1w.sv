module sram_1r1w #(
    parameter DEPTH  = 512,
    parameter WIDTH  = 128,
    parameter ADDR_W = 9
) (
    input  logic               clk,
    input  logic               we,
    input  logic [ADDR_W-1:0]  waddr,
    input  logic [WIDTH-1:0]   wdata,

    input  logic               re,
    input  logic [ADDR_W-1:0]  raddr,
    output logic [WIDTH-1:0]   rdata
);

`ifdef SAED32

    localparam NUM_BANKS  = DEPTH / 128;
    localparam NUM_SLICES = WIDTH / 32;

    logic [WIDTH-1:0] rdata_bank [0:NUM_BANKS-1];

    genvar b, s;

    generate
        for (b = 0; b < NUM_BANKS; b++) begin : g_bank

            for (s = 0; s < NUM_SLICES; s++) begin : g_slice

                SRAM2RW128x32 u_sram (
                    // PORT 1: WRITE
                    .A1   (waddr[6:0]),
                    .CE1  (clk),
                    .CSB1 (~(we && (waddr[8:7] == b))),
                    .WEB1 (~we),
                    .OEB1 (1'b1),

                    .I1   (wdata[s*32 +: 32]),
                    .O1   (),

                    // PORT 2: READ
                    .A2   (raddr[6:0]),
                    .CE2  (clk),
                    .CSB2 (~(re && (raddr[8:7] == b))),
                    .WEB2 (1'b1),
                    .OEB2 (1'b0),

                    .I2   (32'b0),
                    .O2   (rdata_bank[b][s*32 +: 32])
                );

            end
        end
    endgenerate

    // Seleção do banco de leitura
    always_ff @(posedge clk) begin
        if (re)
            rdata <= rdata_bank[raddr[8:7]];
    end

`else

    logic [WIDTH-1:0] mem [0:DEPTH-1];

    always_ff @(posedge clk) begin
        if (we)
            mem[waddr] <= wdata;
    end

    always_ff @(posedge clk) begin
        if (re)
            rdata <= mem[raddr];
    end

`endif

endmodule