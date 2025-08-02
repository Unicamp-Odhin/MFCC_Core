`timescale 1ns/1ps

module dct #(
    parameter NUM_CEPS    = 12,
    parameter NUM_FILTERS = 40,
    parameter INPUT_WIDTH = 8,
    parameter CEPS_WIDTH  = 16,
    parameter NF_LOG2     = $clog2(NUM_FILTERS),
    parameter NC_LOG2     = $clog2(NUM_CEPS)
) (
    input  logic clk,
    input  logic rst_n,

    input  logic in_valid,
    input  logic [NF_LOG2 - 1:0]     frame_ptr_i,
    input  logic [INPUT_WIDTH - 1:0] power_in,

    input  logic start_i,

    output logic dct_done_o,

    output logic dct_valid_o,
    output logic [CEPS_WIDTH - 1:0] ceps_out,
    output logic [NC_LOG2 - 1:0] ceps_ptr_o
);

    logic signed [31:0] cos_lut[NUM_CEPS][NUM_FILTERS]; // LUT para os cossenos
    logic signed [INPUT_WIDTH - 1:0] mel_filters[NUM_FILTERS]; // Buffer de entrada

    initial begin
        $readmemh("tables/cos.hex", cos_lut);
    end

    always_ff @( posedge clk ) begin : MEL_BUFFER_INPUT_LOGIC
        if (in_valid) begin
            mel_filters[frame_ptr_i] <= power_in;
        end
    end

    typedef enum logic [1:0] {
        IDLE,
        PROCESSING,
        UPDATE_K,
        DONE
    } dct_state_t;


    logic [NC_LOG2 - 1:0] k_ptr;
    logic [NF_LOG2 - 1:0] n_ptr;

    logic signed [63:0] mul_result;
    logic signed [31:0] acc;
    dct_state_t dct_state;

    always_ff @(posedge clk or negedge rst_n ) begin : DCT_FSM
        dct_done_o   <= 0;
        dct_valid_o  <= 0;

        if (!rst_n) begin
            ceps_ptr_o <= 'd0;
            dct_state  <= IDLE;
            acc        <= 0;
            k_ptr      <= 0;
            n_ptr      <= 0;
            mul_result <= 0;
        end else begin
            unique case (dct_state)
                IDLE: begin
                    if (start_i) begin
                        k_ptr     <= 0;
                        n_ptr     <= 0;
                        acc       <= 0;
                        dct_state <= PROCESSING;
                    end
                end

                PROCESSING: begin
                    mul_result <= $signed(mel_filters[n_ptr]) * $signed(cos_lut[k_ptr][n_ptr]) + (1 << 30);
                    acc <= acc + mul_result[62:31];
                    n_ptr <= n_ptr + 1;

                    if(n_ptr == NUM_FILTERS - 1) begin
                        dct_state <= UPDATE_K;
                    end
                end

                UPDATE_K: begin
                    ceps_ptr_o  <= k_ptr;
                    ceps_out    <= acc[CEPS_WIDTH - 1:0];
                    dct_valid_o <= 1;
                    k_ptr       <= k_ptr + 1;
                    n_ptr       <= 0;
                    acc         <= 0;
                    mul_result  <= 0;

                    if(k_ptr == NUM_CEPS - 1) begin
                        dct_state <= DONE;
                    end else begin
                        dct_state <= PROCESSING;
                    end
                end

                DONE: begin
                    dct_done_o <= 1;
                    dct_state  <= IDLE;
                end

                default: dct_state <= IDLE;
            endcase
        end
    end

endmodule
