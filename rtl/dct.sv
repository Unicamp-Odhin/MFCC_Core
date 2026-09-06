`timescale 1ns/1ps

module mul_fixed #(
    parameter WIDTH = 32,
    parameter F = 16
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

module dct #(
    parameter NUM_CEPS    = 12,
    parameter NUM_MEL_FILTERS = 40,
    parameter ENERGIES_WIDTH = 32,
    parameter CEPS_WIDTH  = 32,
    parameter DCT_COEFF_WIDTH = 32,
    parameter F = 16,
    parameter NF_LOG2 = $clog2(NUM_MEL_FILTERS),
    parameter NC_LOG2 = $clog2(NUM_CEPS)
) (
    input  logic clk,
    input  logic rst_n,

    input  logic in_valid,
    input  logic [NF_LOG2-1:0]     frame_ptr_i,
    input  logic signed[ENERGIES_WIDTH-1:0] energy_in,

    input  logic start_i,

    output logic dct_done_o,

    output logic dct_valid_o,
    output logic [CEPS_WIDTH - 1:0] ceps_out,
    output logic [NC_LOG2 - 1:0] ceps_ptr_o
);

    // TODO parametrizar no futuro
    localparam int FACTOR0 = 10362;
    localparam int FACTORK = 14654;


    logic signed [DCT_COEFF_WIDTH-1:0] cos_lut[NUM_CEPS][NUM_MEL_FILTERS]; // LUT para os cossenos
    logic signed [ENERGIES_WIDTH-1:0] energies[NUM_MEL_FILTERS]; // Buffer de entrada


    initial begin
        $readmemh("tables/cos_lut.hex", cos_lut);
    end

    always_ff @( posedge clk ) begin : MEL_BUFFER_INPUT_LOGIC
        if (in_valid) begin
            energies[frame_ptr_i] <= energy_in;
        end
    end

    typedef enum logic [1:0] {
        IDLE,
        PROCESSING,
        UPDATE_K,
        DONE
    } dct_state_t;


    logic [NC_LOG2-1:0] k_ptr;
    logic [NF_LOG2-1:0] n_ptr;

    logic signed [2*CEPS_WIDTH-1:0] mul_result, mul_result_temp;
    logic signed [2*CEPS_WIDTH-1:0] acc, temp_ceps_out;
    logic signed [ENERGIES_WIDTH-1:0] signed_filter;
    logic signed [DCT_COEFF_WIDTH-1:0] cos;
    

    assign signed_filter = energies[n_ptr];
    assign cos = cos_lut[k_ptr][n_ptr];

    dct_state_t dct_current_state, dct_next_state;

    long_mul_fixed #(.F(F)) u_mul (
        .a (signed_filter),
        .b (cos),
        .result (mul_result_temp)
    );


    always_ff @(posedge clk) begin
        if (!rst_n) begin
            dct_current_state <= IDLE;

            k_ptr <= '0;
            n_ptr <= '0;
            ceps_ptr_o <= '0;

            acc <= '0;
            mul_result <= '0;
            temp_ceps_out <= '0;

            dct_valid_o <= 1'b0;
            dct_done_o <= 1'b0;

        end else begin

            dct_valid_o <= 1'b0;
            dct_done_o  <= 1'b0;

            dct_current_state <= dct_next_state;

            case (dct_current_state)

                IDLE: begin
                    if (start_i) begin
                        k_ptr <= '0;
                        n_ptr <= '0;
                        acc   <= '0;
                    end
                end

                PROCESSING: begin
                    mul_result <= mul_result_temp;
                    acc <= acc + mul_result;
                    n_ptr <= n_ptr + 1'b1;
                end

                UPDATE_K: begin
                    ceps_ptr_o <= k_ptr;

                    if (k_ptr == 0)
                        temp_ceps_out <= FACTOR0 * acc;
                    else
                        temp_ceps_out <= FACTORK * acc;

                    k_ptr <= k_ptr + 1'b1;
                    n_ptr <= '0;

                    acc <= '0;

                    mul_result <= '0;
                    dct_valid_o <= 1'b1;
                end

                DONE: begin
                    dct_done_o <= 1'b1;
                end

                default: begin
                    k_ptr <= '0;
                    n_ptr <= '0;
                    acc   <= '0;
                end

            endcase
        end
    end


    always_comb begin

        dct_next_state = dct_current_state;

        case (dct_current_state)

            IDLE: begin
                if (start_i)
                    dct_next_state = PROCESSING;
            end

            PROCESSING: begin
                if (n_ptr == NUM_MEL_FILTERS)
                    dct_next_state = UPDATE_K;
            end

            UPDATE_K: begin
                if (k_ptr == NUM_CEPS-1)
                    dct_next_state = DONE;
                else
                    dct_next_state = PROCESSING;
            end

            DONE: begin
                dct_next_state = IDLE;
            end

            default: begin
                dct_next_state = IDLE;
            end

        endcase
    end


    always_comb begin
        if (temp_ceps_out != '0) begin
            ceps_out = temp_ceps_out[CEPS_WIDTH+F-1:F];
        end else begin
            ceps_out = '0;
        end
    end


endmodule
