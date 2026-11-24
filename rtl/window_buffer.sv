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
  logic [PTR_WIDTH-1:0] wr_ptr;        // ponteiro circular de escrita (continua entre quadros)
  logic [PTR_WIDTH-1:0] win_rd_idx;    // indice sequencial dentro da janela atual
  logic [PTR_WIDTH-1:0] win_base_ptr;  // endereco base da janela
  logic [PTR_WIDTH-1:0] rd_phys_addr;  // De fato onde a sample esta no buffer
  logic [PTR_WIDTH:0]   fill_need;     // amostras novas que ainda faltam ler da FIFO neste quadro
  logic                 first_fill;    // 1 ate o fim do primeiro preenchimento (FRAME_SIZE amostras)

  typedef enum logic [2:0] {
    IDLE,
    START,
    MOVE,
    REQUEST_DATA,
    FILL
  } state_t;

  state_t current_state, next_state;

  logic [PTR_WIDTH:0] addr_sum;
  logic [PTR_WIDTH:0] base_sum;
  assign addr_sum = win_base_ptr + win_rd_idx;
  assign base_sum = win_base_ptr + FRAME_STEP;

  logic valid_to_read;

  logic [WIDTH-1:0] buffer_rdata;

  logic [PTR_WIDTH-1:0] mem_waddr;
  logic [PTR_WIDTH-1:0] mem_raddr;

  logic mem_we;
  logic mem_re;

  assign mem_waddr = wr_ptr;
  assign mem_raddr = rd_phys_addr;

  // ---------------------------------------------------------------------------
  // mem_we acompanha EXATAMENTE os pops da FIFO:
  //   pop na borda N  ->  read_data_o (registrado no FIFO) valido durante C(N)
  //                    ->  escrita na memoria na borda N+1, ja com a amostra
  //                    correta (elimina a escrita com dado "velho" fora do FILL,
  //                    que desalinhava o inicio de cada janela).
  // ---------------------------------------------------------------------------
  always_ff @(posedge clk) begin
    mem_we <= fifo_rd_en_o && ~fifo_empty_i;
  end
  assign mem_re = valid_to_read;


  `ifdef SAED32
      // TODO por hora fiz isso como um ajuste para a questao de 400 posicoes
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
      MOVE: next_state = FILL;
      REQUEST_DATA: begin
        if (!fifo_empty_i) begin
          next_state = FILL;
        end else begin
          next_state = REQUEST_DATA;
        end
      end
      FILL: begin
        if (win_rd_idx == (FRAME_SIZE - 1)) begin
          next_state = IDLE;
          done_o = 1;
        end
        // So volta a esperar a FIFO se ainda faltar amostra nova neste quadro;
        // quando fill_need == 0 as leituras restantes vem do proprio buffer.
        else if (fifo_empty_i && (fill_need != 0)) begin
          next_state = REQUEST_DATA;
        end else begin
          next_state = FILL;
        end
      end
      default: next_state = current_state;
    endcase
  end



  always_ff @(posedge clk) begin
    start_next_state_o          <= 0;
    fifo_rd_en_o                <= 0;
    valid_to_read               <= 0;

    if (!rst_n) begin
      win_base_ptr <= 0;
      wr_ptr       <= 0;
      win_rd_idx   <= 0;
      rd_phys_addr <= '0;
      valid_to_read <= '0;
      fill_need    <= FRAME_SIZE;
      first_fill   <= 1'b1;
    end else begin
      rd_phys_addr <= (addr_sum >= FRAME_SIZE) ? (addr_sum - FRAME_SIZE)
                                               : addr_sum[PTR_WIDTH-1:0];
      valid_to_read <= '0;

      // Escrita circular: avanca 1 posicao por amostra REALMENTE lida da FIFO
      // (mem_we) e NUNCA e resetado entre quadros. Invariante: apos o quadro n,
      // wr_ptr aponta para a posicao da proxima amostra nova, que fica exatamente
      // 240 posicoes atras do inicio da janela seguinte (win_base_ptr avanca
      // FRAME_STEP por quadro).
      if (mem_we) begin
        wr_ptr <= (wr_ptr == (FRAME_SIZE - 1)) ? '0 : (wr_ptr + 1'b1);
      end

      // Contador de amostras novas restantes neste quadro:
      //   - recarregado no MOVE (FRAME_SIZE no primeiro quadro, FRAME_STEP depois)
      //   - decrementado a cada amostra realmente lida da FIFO (mem_we)
      if (current_state == MOVE) begin
        fill_need <= first_fill ? FRAME_SIZE : FRAME_STEP;
      end else if (mem_we) begin
        fill_need <= fill_need - 1'b1;
      end

      case (current_state)
        START: begin
          win_base_ptr <= 0;
          win_rd_idx   <= 0;
          start_next_state_o <= 1;
        end
        MOVE: begin
          win_base_ptr <= (base_sum >= FRAME_SIZE) ? (base_sum - FRAME_SIZE)
                                                   : base_sum[PTR_WIDTH-1:0];
          win_rd_idx   <= 0;
          start_next_state_o <= 1;
        end
        REQUEST_DATA: begin
          // rd_en fica asserted continuamente enquanto faltar amostra: o pop
          // acontece na borda em que o dado chega (borda de transicao para
          // FILL), garantindo o alinhamento escrita x leitura da janela.
          fifo_rd_en_o <= (fill_need > (mem_we + (fifo_rd_en_o && ~fifo_empty_i)));
        end
        FILL: begin
          valid_to_read <= 1'b1;
          win_rd_idx    <= win_rd_idx + 1'b1;

          // Um pop por ciclo de FILL enquanto faltar amostra nova. O saldo
          // subtrai o pop "em voo" da borda atual (fifo_rd_en_o && ~fifo_empty_i)
          // e o pop da borda anterior (mem_we) para nao estourar fill_need.
          fifo_rd_en_o <= (fill_need > (mem_we + (fifo_rd_en_o && ~fifo_empty_i)));

          if (win_rd_idx == (FRAME_SIZE - 1)) begin
            first_fill <= 1'b0;  // primeiro preenchimento (FRAME_SIZE) concluido
          end
        end
        default : begin
          wr_ptr       <= wr_ptr;
          win_rd_idx   <= win_rd_idx;
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
