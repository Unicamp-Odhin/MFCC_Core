module baselog2_fp #(
    parameter F = 16
) (
    input  logic signed [63:0] x,
    output logic signed [63:0] result
);
  localparam W = F + 1;  // largura do valor normalizado
  localparam P = 2 * W;  // largura do produto
  localparam S = F + 2;  // largura após deslocamento

  logic left_shift;
  logic unsigned [63:0] xu;
  logic [63:0] shifted_x;
  logic [W-1:0] x_cur;
  logic [F-1:0] frac_bits;
  logic [P-1:0] produto;
  logic [S-1:0] deslocado;
  logic cond;
  integer i;
  integer k, int_part, shift_amt;

  always_comb begin
    if (x <= 0) begin
      result = 64'h8000_0000_0000_0000;  // INT64_MIN
    end else begin

      xu = x;

      //primeiro 1
      k  = 0;
      for (i = 0; i < 64; i = i + 1) begin
        if (xu[i]) k = i;
      end

      int_part = k - F;

      // direção e quantidade do deslocamento
      if (k < F) begin
        left_shift = 1'b1;
        shift_amt  = F - k;
      end else begin
        left_shift = 1'b0;
        shift_amt  = k - F;
      end

      //normalização
      shifted_x = left_shift ? (xu << shift_amt) : (xu >> shift_amt);

      // Valor normalizado: MSB na posição F
      x_cur = shifted_x[F:0];

      // Cadeia de F estágios para a fração
      frac_bits = 0;
      for (i = 1; i <= F; i = i + 1) begin
        produto   = x_cur * x_cur;
        deslocado = produto >> F;  // equivale a produto[P-1:F]
        cond      = deslocado[F+1];  // MSB de deslocado

        if (cond) begin
          x_cur = deslocado >> 1;  // deslocado[S-1:1]
          frac_bits[F-i] = 1'b1;
        end else begin
          x_cur = deslocado[F:0];  // mantém apenas F+1 bits
          frac_bits[F-i] = 1'b0;
        end
      end

      result = ($signed(int_part) <<< F) | frac_bits;
    end
  end
endmodule
