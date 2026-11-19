`timescale 1ns / 1ps

module mel #(
    parameter NUM_MEL_FILTERS = 40,
    parameter FFT_SIZE = 512,
    parameter NFFT_LOG2 = $clog2(FFT_SIZE),
    parameter NUM_RFFT_BINS = FFT_SIZE / 2 + 1,
    parameter RFFT_BIN_ADDR_WIDTH = $clog2(NUM_RFFT_BINS),
    parameter POWER_WIDTH = 64,
    parameter F = 16,
    parameter MEL_ENERGY_WIDTH = 32,
    parameter FILTER_INDEX_WIDTH = $clog2(NUM_MEL_FILTERS),
    parameter MEL_BANK_SIZE = 32
) (
    input logic clk,
    input logic rst_n,

    input logic in_valid,
    input logic [NFFT_LOG2-1:0] power_spectrum_frame_ptr,
    input logic [POWER_WIDTH-1:0] power_spectrum_frame_in,

    input logic mel_start_i,

    output logic mel_done_o,

    output logic [MEL_ENERGY_WIDTH-1:0] mel_value_energies,
    output logic [FILTER_INDEX_WIDTH-1:0] mel_prt_energies,
    output logic mel_valid

);
  // localparam ACCUMULATOR_WIDTH = $clog2(NUM_RFFT_BINS)+POWER_WIDTH;
  localparam MEL_MEMORY_DEPTH = MEL_BANK_SIZE * NUM_MEL_FILTERS;
  //localparam MEL_BANK_ADDR_WIDTH = $clog2(MEL_BANK_SIZE) + 1;
  localparam MEL_MEMORY_ADDR_WIDTH = $clog2(MEL_MEMORY_DEPTH);
  localparam LOG10_CONST = $rtoi(6.02059992 * (1 << F));

  logic signed [POWER_WIDTH-1:0] log10_const_signal;
  assign log10_const_signal = LOG10_CONST;

  logic [POWER_WIDTH-1:0] sum, sum_next, sum_finish;
  logic [FILTER_INDEX_WIDTH-1:0] i, i_next;
  logic [RFFT_BIN_ADDR_WIDTH:0] k, k_next, k_init, k_end;
  logic [MEL_MEMORY_ADDR_WIDTH-1:0] i_total, i_total_next, prt_memory;

  logic read_en;
  logic [POWER_WIDTH-1:0] power_spectrum;

  logic [POWER_WIDTH-1:0] power_spectrum_mem[0:NUM_RFFT_BINS-1];

  `ifdef SAED32
    localparam int PS_NUM_BANKS  = (NUM_RFFT_BINS + 127) / 128;
    localparam int PS_NUM_SLICES = POWER_WIDTH / 32;

    logic [POWER_WIDTH-1:0] ps_rdata_bank [0:PS_NUM_BANKS-1];

    genvar b, s;

    generate
      for (b = 0; b < PS_NUM_BANKS; b++) begin : g_ps_bank

        for (s = 0; s < PS_NUM_SLICES; s++) begin : g_ps_slice

          SRAM2RW128x32 u_ps_sram (

            // PORT 1: ESCRITA (frame_in)
            .A1   (power_spectrum_frame_ptr[6:0]),
            .CE1  (clk),
            .CSB1 (~(in_valid && (power_spectrum_frame_ptr[NFFT_LOG2-1:7] == b))),
            .WEB1 (~in_valid),
            .OEB1 (1'b1),

            .I1   (power_spectrum_frame_in[s*32 +: 32]),
            .O1   (),

            // PORT 2: LEITURA (frame_out)
            .A2   (k_next[6:0]),
            .CE2  (clk),
            .CSB2 (~(read_en && (k_next[NFFT_LOG2-1:7] == b))),
            .WEB2 (1'b1),
            .OEB2 (1'b0),

            .I2   (32'b0),
            .O2   (ps_rdata_bank[b][s*32 +: 32])

          );

        end
      end
    endgenerate

    always_ff @(posedge clk) begin
      if (read_en) begin
        power_spectrum <= ps_rdata_bank[k_next[NFFT_LOG2-1:7]];
      end
    end

  `else
    always_ff @(posedge clk) begin : POWER_SPECTRUM_BUFFER_INPUT_LOGIC
      if (in_valid) begin
        power_spectrum_mem[power_spectrum_frame_ptr] <= power_spectrum_frame_in;
      end
    end

    always_ff @(posedge clk) begin
      if (read_en) begin
        power_spectrum <= power_spectrum_mem[k_next];
      end
    end

  `endif

  logic [POWER_WIDTH-1:0] temp_mul_next;
  logic [POWER_WIDTH-1:0] temp_log2, temp_log10;


  logic [POWER_WIDTH/2-1:0] filter_temp;
  logic [POWER_WIDTH-1:0] filter;

  mel_table_rom dut_mel_table_rom(
      .addr(prt_memory),
      .dout(filter_temp)
  );

  assign filter = {{(POWER_WIDTH/2){1'b0}}, filter_temp};


  typedef enum logic [1:0] {
    IDLE,
    LOAD,
    CALC_SUM,
    CALC_ENERGY
  } state_t;

  state_t state, next_state;

  long_mul_fixed #(
      .F(F)
  ) u_mul (
      .a     (power_spectrum),
      .b     (filter),
      .result(temp_mul_next)
  );

  long_mul_fixed #(
      .F(F)
  ) u_mul_out (
      .a     (temp_log2),
      .b     (log10_const_signal),
      .result(temp_log10)
  );

  always_ff @(posedge clk) begin
    if (!rst_n) begin
      state      <= IDLE;
      sum        <= 0;
      i          <= 0;
      k          <= 0;
      i_total    <= 0;
      mel_done_o <= 0;
      sum_finish <= 0;
    end else begin
      state   <= next_state;
      sum     <= sum_next;
      i       <= i_next;
      k       <= k_next;
      i_total <= i_total_next;
      if (state == LOAD) begin
         k_init <= filter[RFFT_BIN_ADDR_WIDTH+16:16];
         k <= filter[RFFT_BIN_ADDR_WIDTH+16:16];
         k_end <= filter[RFFT_BIN_ADDR_WIDTH:0];
      end
      if (next_state == CALC_ENERGY) sum_finish <= sum_next;
      if (i == NUM_MEL_FILTERS) begin
        state      <= IDLE;
        mel_done_o <= 1;
      end else begin
        mel_done_o <= 0;
      end
    end
  end


  always_comb begin
    mel_value_energies = '0;
    mel_prt_energies   = i;
    mel_valid          = 1'b0;

    next_state         = state;
    sum_next           = sum;
    i_next             = i;
    k_next             = k;
    i_total_next       = i_total;
    prt_memory         = 0;

    read_en = 1'b0;

    case (state)
      IDLE: begin
        mel_valid    = 1'b0;
        sum_next     = 0;
        i_next       = 0;
        i_total_next = 0;

        if (mel_start_i) next_state = LOAD;
      end

      LOAD: begin
        mel_valid          = 1'b0;
        mel_value_energies = '0;
        mel_prt_energies   = i;

        if (i < NUM_MEL_FILTERS) begin
          prt_memory = i_total;
          next_state = CALC_SUM;
          k_next = filter[RFFT_BIN_ADDR_WIDTH+16:16];
          read_en = 1'b1;
        end else begin
          next_state = IDLE;
        end
      end

      CALC_SUM: begin

        mel_valid          = 1'b0;
        mel_value_energies = '0;
        mel_prt_energies   = i;
        prt_memory = i_total + 1 + k - k_init;

        sum_next = sum + temp_mul_next;
        k_next = k + 1;

        if (k < k_end) begin
          read_en = 1'b1;
          next_state = CALC_SUM;
        end else begin
          next_state = CALC_ENERGY;
        end
      end

      CALC_ENERGY: begin
        i_next           = i + 1;
        i_total_next     = i_total + MEL_BANK_SIZE;
        sum_next         = 0;

        mel_valid        = 1'b1;
        mel_prt_energies = i;

        if (sum <= 0) begin
          mel_value_energies = '0;  // Pode ajustar para saturar em 0
        end else begin
          mel_value_energies = temp_log10[MEL_ENERGY_WIDTH-1:0];
        end

        next_state = LOAD;
      end

      default: begin
        next_state         = IDLE;
        sum_next           = 0;
        i_next             = 0;
        i_total_next       = 0;
        k_next             = 0;
        mel_valid          = 1'b0;
        mel_value_energies = 8'h0;
        mel_prt_energies   = 6'h0;
      end
    endcase
  end

  log2_fp #(
      .F(F)
  ) u_base2log (
      .x(sum_finish),
      .result(temp_log2)
  );

endmodule
