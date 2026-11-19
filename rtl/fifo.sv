`timescale 1ns / 1ps

module fifo #(
    parameter DEPTH = 32,
    parameter WIDTH = 64
) (
    input logic clk,
    input logic rst_n,

    input logic wr_en_i,
    input logic rd_en_i,

    input  logic [WIDTH-1:0] write_data_i,
    output logic             full_o,
    output logic             empty_o,
    output logic [WIDTH-1:0] read_data_o
);

    localparam PTR_WIDTH = $clog2(DEPTH);

    logic [PTR_WIDTH-1:0] read_ptr;
    logic [PTR_WIDTH-1:0] write_ptr;

`ifdef SAED32

    logic [31:0] rdata_low;
    logic [31:0] rdata_high;

    // Duas SRAMs de 32x32 para formar uma memória 32x64
    SRAM2RW32x32 u_sram_low (
        // PORT 1: WRITE
        .A1   (write_ptr),
        .CE1  (clk),
        .CSB1 (~(wr_en_i && !full_o)),
        .WEB1 (~wr_en_i),
        .OEB1 (1'b1),

        .I1   (write_data_i[31:0]),
        .O1   (),

        // PORT 2: READ
        .A2   (read_ptr),
        .CE2  (clk),
        .CSB2 (~(rd_en_i && !empty_o)),
        .WEB2 (1'b1),
        .OEB2 (1'b0),

        .I2   (32'b0),
        .O2   (rdata_low)
    );

    SRAM2RW32x32 u_sram_high (
        // PORT 1: WRITE
        .A1   (write_ptr),
        .CE1  (clk),
        .CSB1 (~(wr_en_i && !full_o)),
        .WEB1 (~wr_en_i),
        .OEB1 (1'b1),

        .I1   (write_data_i[63:32]),
        .O1   (),

        // PORT 2: READ
        .A2   (read_ptr),
        .CE2  (clk),
        .CSB2 (~(rd_en_i && !empty_o)),
        .WEB2 (1'b1),
        .OEB2 (1'b0),

        .I2   (32'b0),
        .O2   (rdata_high)
    );

    // Saída da leitura
    always_ff @(posedge clk) begin
        if (!rst_n) begin
            read_data_o <= '0;
        end else if (rd_en_i && !empty_o) begin
            read_data_o <= {rdata_high, rdata_low};
        end
    end

`else

    logic [WIDTH-1:0] memory [0:DEPTH-1];

    always_ff @(posedge clk) begin
        if (!rst_n) begin
            read_data_o <= '0;
        end else if (rd_en_i && !empty_o) begin
            read_data_o <= memory[read_ptr];
        end
    end

    always_ff @(posedge clk) begin
        if (rst_n && wr_en_i && !full_o) begin
            memory[write_ptr] <= write_data_i;
        end
    end

`endif

    // Ponteiro de leitura
    always_ff @(posedge clk) begin
        if (!rst_n) begin
            read_ptr <= '0;
        end else if (rd_en_i && !empty_o) begin
            read_ptr <= read_ptr + 1'b1;
        end
    end

    // Ponteiro de escrita
    always_ff @(posedge clk) begin
        if (!rst_n) begin
            write_ptr <= '0;
        end else if (wr_en_i && !full_o) begin
            write_ptr <= write_ptr + 1'b1;
        end
    end

    // Status FIFO
    assign empty_o = (write_ptr == read_ptr);

    assign full_o = (write_ptr + 1'b1 == read_ptr);

endmodule