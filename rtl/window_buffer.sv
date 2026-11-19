`timescale 1ns / 1ps

module window_buffer #(
    parameter WIDTH      = 64,
    parameter FRAME_SIZE = 400,
    parameter FRAME_STEP = 160
) (
    input logic clk,
    input logic rst_n,

    // Control signals
    input logic start_move,

    // FIFO Interface
    output logic             fifo_rd_en_o,
    input  logic [WIDTH-1:0] fifo_data_i,
    input  logic             fifo_empty_i,

    // Read Interface
    output logic [WIDTH-1:0] read_data_o,
    output logic             valid_to_read_o,
    output logic             done_o,

    output logic start_next_state_o,
    output logic idle_o
);

  localparam int PTR_WIDTH = $clog2(FRAME_SIZE);
  logic [PTR_WIDTH-1:0] frame_size, frame_step;
  logic [PTR_WIDTH-1:0] wr_ptr;  // ponteiro de escrita no buffer circular 
  logic [PTR_WIDTH-1:0] win_rd_idx;  // indice sequencial dentro da janela atual
  logic [PTR_WIDTH-1:0] win_base_ptr;  // endereço base da janela
  logic [PTR_WIDTH-1:0] rd_phys_addr;  // De fato onde a sample está no buffer

  assign frame_size = FRAME_SIZE;
  assign frame_step = FRAME_STEP;

  typedef enum logic [2:0] {
    IDLE,
    START,
    MOVE,
    REQUEST_DATA,
    FILL
  } state_t;

  state_t current_state, next_state;

  logic [PTR_WIDTH:0] addr_sum;
  logic diff_pointers;
  assign addr_sum = win_base_ptr + win_rd_idx;

  assign diff_pointers = rd_phys_addr != wr_ptr;

  logic valid_to_read;

  logic [WIDTH-1:0] buffer_rdata;

  logic [PTR_WIDTH-1:0] mem_waddr;
  logic [PTR_WIDTH-1:0] mem_raddr;

  logic mem_we;
  logic mem_re;

  assign mem_waddr = wr_ptr;
  assign mem_raddr = rd_phys_addr;

  // assign mem_we = fifo_rd_en_ff;
  always_ff @(posedge clk) begin
    mem_we <= ~fifo_empty_i;
  end
  assign mem_re = valid_to_read;


  `ifdef SAED32
      // TODO por hora fiz isso como um ajuste para a questão de 400 posições
      localparam int NUM_BANKS = (FRAME_SIZE + 127) / 128;
      localparam int NUM_SLICES = WIDTH / 32;

      logic [WIDTH-1:0] rdata_bank [0:NUM_BANKS-1];

      genvar b, s;

      generate
          for (b = 0; b < NUM_BANKS; b++) begin : g_bank

              for (s = 0; s < NUM_SLICES; s++) begin : g_slice

                  SRAM2RW128x32 u_sram (

                      // PORT 1: WRITE
                      .A1   (mem_waddr[6:0]),
                      .CE1  (clk),
                      .CSB1 (~(mem_we && (mem_waddr[PTR_WIDTH-1:7] == b))),
                      .WEB1 (~mem_we),
                      .OEB1 (1'b1),

                      .I1   (fifo_data_i[s*32 +: 32]),
                      .O1   (),

                      // PORT 2: READ
                      .A2   (mem_raddr[6:0]),
                      .CE2  (clk),
                      .CSB2 (~(mem_re && (mem_raddr[PTR_WIDTH-1:7] == b))),
                      .WEB2 (1'b1),
                      .OEB2 (1'b0),

                      .I2   (32'b0),
                      .O2   (rdata_bank[b][s*32 +: 32])

                  );

              end
          end
      endgenerate

      always_ff @(posedge clk) begin
          if (mem_re)
              buffer_rdata <= rdata_bank[mem_raddr[PTR_WIDTH-1:7]];
      end

  `else

      logic [WIDTH-1:0] mem [0:FRAME_SIZE-1];

      always_ff @(posedge clk) begin
          if (mem_we)
              mem[mem_waddr] <= fifo_data_i;
      end

      always_ff @(posedge clk) begin
          if (mem_re)
              buffer_rdata <= mem[mem_raddr];
      end

  `endif

  
  always_ff @(posedge clk) begin
    if (!rst_n) begin
      current_state <= START;
    end else begin
      current_state <= next_state;
    end
  end

  always_comb begin
    next_state = current_state;
    idle_o = 0;
    done_o = 0;

    unique case (current_state)
      IDLE: begin
        idle_o = 1;
        if (start_move) next_state = MOVE;
      end
      START: next_state = REQUEST_DATA;
      MOVE: begin
        if (!fifo_empty_i) begin
          next_state = FILL;
        end else begin
          next_state = REQUEST_DATA;
        end
      end 
      REQUEST_DATA: begin
        if (!fifo_empty_i) begin
          next_state = FILL;
        end else begin
          next_state = REQUEST_DATA;
        end
      end
      FILL: begin
        if (win_rd_idx == (frame_size - 1)) begin
          next_state = IDLE;
          done_o = 1;
        end
        else if (fifo_empty_i) next_state = REQUEST_DATA;
        else next_state = FILL;
      end
      default: next_state = current_state;
    endcase
  end



  always_ff @(posedge clk) begin
    start_next_state_o          <= 0;
    fifo_rd_en_o                <= 0;

    if (!rst_n) begin
      win_base_ptr <= 0;
      wr_ptr       <= 0;
      win_rd_idx   <= 0;
      rd_phys_addr <= '0;
      valid_to_read <= '0;
    end else begin
      rd_phys_addr <= (addr_sum >= frame_size) ? (addr_sum - frame_size) : addr_sum[PTR_WIDTH-1:0];
      valid_to_read <= '0;
      
      case (current_state)
        START: begin
          win_base_ptr <= 0;
          start_next_state_o <= 1;
        end
        MOVE: begin
          if (win_base_ptr + frame_step >= frame_size) begin
            win_base_ptr <= win_base_ptr + frame_step - frame_size;
          end else begin
            win_base_ptr <= win_base_ptr + frame_step;
          end
          start_next_state_o <= 1;
          fifo_rd_en_o <= ~fifo_empty_i && (win_rd_idx != frame_size - 1);
        end
        REQUEST_DATA: begin
          fifo_rd_en_o <= 1;
        end
        FILL: begin
          wr_ptr <= wr_ptr + 1;

          valid_to_read <= 1'b1;
          win_rd_idx <= win_rd_idx + 1;
          fifo_rd_en_o <= ~fifo_empty_i && (win_rd_idx != frame_size - 1);
        end
        IDLE: begin
          if (start_move) begin
            wr_ptr <= 0;
            win_rd_idx <= 0;
          end
        end
        default : begin
          wr_ptr <= wr_ptr;
          win_rd_idx <= win_rd_idx;
        end
      endcase
    end
  end

  logic fifo_rd_en_ff;
  always_ff @(posedge clk) begin
    valid_to_read_o <= valid_to_read;
    fifo_rd_en_ff <= fifo_rd_en_o;
  end

  assign read_data_o = buffer_rdata;

endmodule