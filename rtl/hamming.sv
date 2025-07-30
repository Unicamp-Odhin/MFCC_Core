`timescale 1ns/1ps

module Hamming_Window #(
    parameter SAMPLE_WIDTH     = 16,  // Largura do sample de áudio
    parameter NUM_COEFFICIENTS = 306, // Número de coeficientes da janela de Hamming
    parameter NFFT_SIZE        = 512  // Tamanho do FFT
) (
    input  logic clk,
    input  logic rst_n,

    input  logic start_i,

    input  logic valid_to_read_i,
    output logic rd_en_o,

    output logic [8:0] frame_ptr_o,

    input  logic signed [SAMPLE_WIDTH - 1:0] frame_sample_i,
    output logic signed [SAMPLE_WIDTH - 1:0] hamming_sample_o,
    output logic out_valid_o,
    output logic done_o
);
    logic signed [SAMPLE_WIDTH - 1:0] hamming_window_lut [0:NUM_COEFFICIENTS - 1];

    localparam PADDING_SIZE = NFFT_SIZE - NUM_COEFFICIENTS;

    initial begin

    hamming_window_lut = '{
        16'sd2621, 16'sd2624, 16'sd2634, 16'sd2650, 16'sd2672, 16'sd2701, 16'sd2736, 16'sd2777, 
        16'sd2825, 16'sd2879, 16'sd2940, 16'sd3006, 16'sd3079, 16'sd3158, 16'sd3244, 16'sd3335, 
        16'sd3432, 16'sd3536, 16'sd3645, 16'sd3761, 16'sd3882, 16'sd4010, 16'sd4143, 16'sd4281, 
        16'sd4426, 16'sd4576, 16'sd4732, 16'sd4893, 16'sd5060, 16'sd5232, 16'sd5409, 16'sd5592, 
        16'sd5779, 16'sd5972, 16'sd6170, 16'sd6372, 16'sd6580, 16'sd6792, 16'sd7008, 16'sd7230, 
        16'sd7455, 16'sd7685, 16'sd7920, 16'sd8158, 16'sd8401, 16'sd8647, 16'sd8897, 16'sd9151, 
        16'sd9409, 16'sd9670, 16'sd9935, 16'sd10202, 16'sd10473, 16'sd10748, 16'sd11025, 16'sd11304, 
        16'sd11587, 16'sd11872, 16'sd12160, 16'sd12450, 16'sd12742, 16'sd13036, 16'sd13333, 16'sd13631, 
        16'sd13931, 16'sd14232, 16'sd14535, 16'sd14839, 16'sd15145, 16'sd15451, 16'sd15759, 16'sd16067, 
        16'sd16376, 16'sd16686, 16'sd16996, 16'sd17306, 16'sd17617, 16'sd17927, 16'sd18238, 16'sd18548, 
        16'sd18858, 16'sd19167, 16'sd19476, 16'sd19783, 16'sd20091, 16'sd20397, 16'sd20701, 16'sd21005, 
        16'sd21307, 16'sd21608, 16'sd21907, 16'sd22204, 16'sd22500, 16'sd22793, 16'sd23084, 16'sd23373, 
        16'sd23659, 16'sd23943, 16'sd24224, 16'sd24503, 16'sd24778, 16'sd25051, 16'sd25320, 16'sd25587, 
        16'sd25849, 16'sd26109, 16'sd26365, 16'sd26617, 16'sd26865, 16'sd27110, 16'sd27350, 16'sd27586, 
        16'sd27819, 16'sd28046, 16'sd28270, 16'sd28489, 16'sd28703, 16'sd28913, 16'sd29118, 16'sd29318, 
        16'sd29513, 16'sd29704, 16'sd29889, 16'sd30069, 16'sd30243, 16'sd30413, 16'sd30577, 16'sd30735, 
        16'sd30888, 16'sd31035, 16'sd31177, 16'sd31313, 16'sd31443, 16'sd31568, 16'sd31686, 16'sd31799, 
        16'sd31905, 16'sd32006, 16'sd32100, 16'sd32188, 16'sd32271, 16'sd32346, 16'sd32416, 16'sd32480, 
        16'sd32537, 16'sd32588, 16'sd32633, 16'sd32671, 16'sd32703, 16'sd32728, 16'sd32748, 16'sd32760, 
        16'sd32767, 16'sd32767, 16'sd32760, 16'sd32748, 16'sd32728, 16'sd32703, 16'sd32671, 16'sd32633, 
        16'sd32588, 16'sd32537, 16'sd32480, 16'sd32416, 16'sd32346, 16'sd32271, 16'sd32188, 16'sd32100, 
        16'sd32006, 16'sd31905, 16'sd31799, 16'sd31686, 16'sd31568, 16'sd31443, 16'sd31313, 16'sd31177, 
        16'sd31035, 16'sd30888, 16'sd30735, 16'sd30577, 16'sd30413, 16'sd30243, 16'sd30069, 16'sd29889, 
        16'sd29704, 16'sd29513, 16'sd29318, 16'sd29118, 16'sd28913, 16'sd28703, 16'sd28489, 16'sd28270, 
        16'sd28046, 16'sd27819, 16'sd27586, 16'sd27350, 16'sd27110, 16'sd26865, 16'sd26617, 16'sd26365, 
        16'sd26109, 16'sd25849, 16'sd25587, 16'sd25320, 16'sd25051, 16'sd24778, 16'sd24503, 16'sd24224, 
        16'sd23943, 16'sd23659, 16'sd23373, 16'sd23084, 16'sd22793, 16'sd22500, 16'sd22204, 16'sd21907, 
        16'sd21608, 16'sd21307, 16'sd21005, 16'sd20701, 16'sd20397, 16'sd20091, 16'sd19783, 16'sd19476, 
        16'sd19167, 16'sd18858, 16'sd18548, 16'sd18238, 16'sd17927, 16'sd17617, 16'sd17306, 16'sd16996, 
        16'sd16686, 16'sd16376, 16'sd16067, 16'sd15759, 16'sd15451, 16'sd15145, 16'sd14839, 16'sd14535, 
        16'sd14232, 16'sd13931, 16'sd13631, 16'sd13333, 16'sd13036, 16'sd12742, 16'sd12450, 16'sd12160, 
        16'sd11872, 16'sd11587, 16'sd11304, 16'sd11025, 16'sd10748, 16'sd10473, 16'sd10202, 16'sd9935, 
        16'sd9670, 16'sd9409, 16'sd9151, 16'sd8897, 16'sd8647, 16'sd8401, 16'sd8158, 16'sd7920, 
        16'sd7685, 16'sd7455, 16'sd7230, 16'sd7008, 16'sd6792, 16'sd6580, 16'sd6372, 16'sd6170, 
        16'sd5972, 16'sd5779, 16'sd5592, 16'sd5409, 16'sd5232, 16'sd5060, 16'sd4893, 16'sd4732, 
        16'sd4576, 16'sd4426, 16'sd4281, 16'sd4143, 16'sd4010, 16'sd3882, 16'sd3761, 16'sd3645, 
        16'sd3536, 16'sd3432, 16'sd3335, 16'sd3244, 16'sd3158, 16'sd3079, 16'sd3006, 16'sd2940, 
        16'sd2879, 16'sd2825, 16'sd2777, 16'sd2736, 16'sd2701, 16'sd2672, 16'sd2650, 16'sd2634, 
        16'sd2624, 16'sd2621
    };

    end
    // Aplica a janela de Hamming usando a tabela pré-calculada
    /*always_comb begin
        for (int i = 0; i < 306; i++) begin
            hamming_frame[i] = (frame[i] * hamming_window_lut[i]) >>> 15;
        end
    end*/

    typedef enum logic [1:0] { 
        IDLE,
        CALC,
        PADDING,
        FINISH
    } hamming_state_t;

    hamming_state_t hamming_state;

    int calc_pointer;
    logic [8:0] frame_ptr;

    always_ff @( posedge clk or negedge rst_n) begin
        rd_en_o     <= 0;
        done_o      <= 0;
        out_valid_o <= 0;

        if(!rst_n) begin
            hamming_state <= IDLE;
            frame_ptr_o   <= 0;
            frame_ptr     <= 0;
        end else begin
            case (hamming_state)
                IDLE: begin
                    if(start_i) begin
                        hamming_state <= CALC;
                        calc_pointer  <= 0;
                        frame_ptr_o   <= 0;
                        frame_ptr     <= 0;
                    end
                end
                CALC: begin
                    if(valid_to_read_i) begin
                        out_valid_o      <= 1;
                        rd_en_o          <= 1;
                        hamming_sample_o <= (frame_sample_i * 
                            hamming_window_lut[calc_pointer]) >>> 15;
                        calc_pointer     <= calc_pointer + 1;
                        frame_ptr        <= frame_ptr    + 1;
                        frame_ptr_o      <= frame_ptr;
                    end

                    if(calc_pointer == NUM_COEFFICIENTS - 1) begin
                        hamming_state <= PADDING;
                    end else begin
                        hamming_state <= CALC;
                    end
                end
                PADDING: begin
                    if(frame_ptr < NFFT_SIZE) begin
                        hamming_sample_o <= 0;
                        out_valid_o      <= 1;
                        rd_en_o          <= 1;
                        frame_ptr        <= frame_ptr + 1;
                    end else begin
                        hamming_state <= FINISH;
                    end
                end
                FINISH: begin
                    done_o <= 1;
                    hamming_state <= IDLE;
                end
                default: hamming_state <= IDLE;
            endcase
        end
    end

endmodule