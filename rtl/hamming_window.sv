`timescale 1ns / 1ps

module hamming_window #(
    parameter N = 64,
    parameter F = 16,
    parameter NUM_COEFFICIENTS = 400,
    parameter NFFT_SIZE = 512,
    parameter NFFT_LOG2 = $clog2(NFFT_SIZE)
) (
    input logic clk,
    input logic rst_n,

    input logic start_i,

    input  logic valid_to_read_i,

    output logic [NFFT_LOG2-1:0] frame_ptr_o,


    input logic signed [N-1:0] frame_sample_i,
    output logic signed [N-1:0] hamming_sample_o,
    output logic out_valid_o,
    output logic done_o
);
  localparam NUM_COEFFICIENTS_LOG2 = $clog2(NUM_COEFFICIENTS);
  localparam NFFT_SIZE_COMPAIR = NFFT_SIZE - 1;

  typedef enum logic [1:0] {
    IDLE,
    CALC,
    PADDING,
    FINISH
  } hamming_state_t;

  hamming_state_t hamming_state;

  logic [NUM_COEFFICIENTS_LOG2-1:0] calc_pointer;
  
  logic [NFFT_LOG2:0] frame_ptr;  // +1 bit: conta ate NFFT_SIZE sem wrap (FRAME_SIZE == NFFT)

  logic signed [N-1:0] hamming_coefficient;
  logic signed [2*N-1:0] hamming_sample_temp;

  hamming_rom hamming_rom_uut (
      .addr(calc_pointer),
      .dout(hamming_coefficient)
  );

  
  logic [NFFT_LOG2-1:0] temp_ptr;
  logic temp_valid;
  logic done;


  always_ff @(posedge clk) begin
    done <= 0;
    done_o <= done;

    if (!rst_n) begin
      hamming_state <= IDLE;
      frame_ptr <= 0;
      temp_ptr <= 0;
    end else begin
      temp_valid <= 0;

      case (hamming_state)
        IDLE: begin
          if (start_i) begin
            hamming_state <= CALC;
            calc_pointer <= 0;
            frame_ptr <= 0;
            temp_ptr <= 0;
            temp_valid <= 0;
          end
        end
        CALC: begin
          if (valid_to_read_i) begin
            hamming_sample_temp <= frame_sample_i * hamming_coefficient;
            temp_valid <= 1; 
            frame_ptr <= frame_ptr + 1;
            temp_ptr <= frame_ptr;

            if (calc_pointer == NUM_COEFFICIENTS - 1) begin
              hamming_state <= PADDING;
            end else begin
                calc_pointer <= calc_pointer + 1;
              hamming_state <= CALC;
            end
          end
        end
        PADDING: begin
          // So emite zero quando ainda falta preencher ate NFFT_SIZE;
          // quando FRAME_SIZE == NFFT_SIZE (ou o pad terminou), NAO emite
          // (a versao anterior reemitia o ultimo produto com o ponteiro
          //  wrapado, corrompendo a entrada da FFT).
          if (frame_ptr < NFFT_SIZE_COMPAIR[NFFT_LOG2-1:0]) begin
            temp_valid <= 1;
            hamming_sample_temp <= 0;
            frame_ptr <= frame_ptr + 1;
            temp_ptr <= frame_ptr;
          end else begin
            // frame_ptr chegou ao fim:
            //  - NFFT_SIZE-1: o padding preencheu ate NFFT-2 -> emite o zero
            //    final do slot NFFT-1 (igual ao zero-padding do modelo C)
            //  - NFFT_SIZE: o quadro ja ocupa a FFT inteira (FRAME_SIZE==NFFT)
            //    -> NAO emite (emitir com o ponteiro wrapado corrompia o slot 0)
            if (frame_ptr == NFFT_SIZE - 1) begin
              temp_valid <= 1;
              hamming_sample_temp <= 0;
              temp_ptr <= frame_ptr;
            end
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

  always_ff @(posedge clk) begin
  end
      
  assign frame_ptr_o = temp_ptr;
  assign out_valid_o = temp_valid;
  assign hamming_sample_o = (hamming_sample_temp[N+F-1:F]);


endmodule
