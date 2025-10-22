`timescale 1ns/1ps

module hamming_window #(
    parameter SAMPLE_WIDTH     = 16,  // Largura do sample de áudio
    parameter NUM_COEFFICIENTS = 306, // Número de coeficientes da janela de Hamming
    parameter NFFT_SIZE        = 512,  // Tamanho do FFT
    parameter NFFT_LOG2        = $clog2(NFFT_SIZE)
) (
    input  logic clk,
    input  logic rst_n,

    input  logic start_i,

    input  logic valid_to_read_i,
    output logic rd_en_o,

    output logic [NFFT_LOG2 - 1:0] frame_ptr_o,

    input  logic signed [SAMPLE_WIDTH - 1:0] frame_sample_i,
    output logic signed [SAMPLE_WIDTH - 1:0] hamming_sample_o,
    output logic out_valid_o,
    output logic done_o
);
    localparam NFFT_SIZE_COMPAIR = NFFT_SIZE - 1;

    logic signed [SAMPLE_WIDTH - 1:0] hamming_window_lut [0:NUM_COEFFICIENTS - 1];

    initial begin
        $readmemh("tables/hamming_window.hex", hamming_window_lut);
    end

    typedef enum logic [1:0] { 
        IDLE,
        CALC,
        PADDING,
        FINISH
    } hamming_state_t;

    hamming_state_t hamming_state;

    integer calc_pointer;
    logic [NFFT_LOG2 - 1:0] frame_ptr;

    logic signed [SAMPLE_WIDTH - 1:0] hamming_coefficient;
    logic signed [2 * SAMPLE_WIDTH - 1:0] hamming_sample_temp;
    logic [NFFT_LOG2 - 1:0] temp_ptr;
    logic temp_valid;
    logic done;

    always_ff @( posedge clk ) begin
        rd_en_o     <= 0;
        done        <= 0;
        done_o      <= done;

        if(!rst_n) begin
            hamming_state <= IDLE;
            frame_ptr     <= 0;
            temp_ptr      <= 0;
        end else begin
            case (hamming_state)
                IDLE: begin
                    if(start_i) begin
                        hamming_state     <= CALC;
                        calc_pointer      <= 0;
                        frame_ptr         <= 0;
                        temp_ptr          <= 0;
                        temp_valid        <= 0;
                        rd_en_o           <= 1;
                    end
                end
                CALC: begin
                    rd_en_o <= 1;
                    

                    if(calc_pointer == NUM_COEFFICIENTS) begin
                        hamming_sample_temp <= 0;
                        rd_en_o             <= 0;
                        hamming_state       <= PADDING;
                    end else begin
                        if(valid_to_read_i) begin
                            temp_valid          <= 1;
                            hamming_sample_temp <= frame_sample_i * 
                                hamming_coefficient;
                            calc_pointer        <= calc_pointer + 1;
                            frame_ptr           <= frame_ptr    + 1;
                            temp_ptr            <= frame_ptr;
                        end
                        hamming_state <= CALC;
                    end
                end
                PADDING: begin
                    rd_en_o <= 0;
                    if(frame_ptr < NFFT_SIZE_COMPAIR[NFFT_LOG2 - 1:0]) begin
                        hamming_sample_temp <= 0;
                        temp_valid          <= 1;
                        frame_ptr           <= frame_ptr + 1;
                        temp_ptr            <= frame_ptr;
                    end else begin
                        temp_valid    <= 1;
                        temp_ptr      <= frame_ptr;
                        hamming_state <= FINISH;
                    end
                end
                FINISH: begin
                    temp_valid    <= 0;
                    done          <= 1;
                    hamming_state <= IDLE;
                end
                default: hamming_state <= IDLE;
            endcase
        end
    end

    always_ff @( posedge clk ) begin
        if(!rst_n) begin
            out_valid_o      <= 0;
        end else begin
            frame_ptr_o      <= temp_ptr;
            out_valid_o      <= temp_valid;
            hamming_sample_o <= hamming_sample_temp[2 * SAMPLE_WIDTH - 2 : SAMPLE_WIDTH - 1];
        end
    end

    assign hamming_coefficient = hamming_window_lut[calc_pointer];

endmodule
