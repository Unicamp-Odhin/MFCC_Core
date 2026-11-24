module cos_lut_rom (
	addr,
	dout
);
	reg _sv2v_0;
	input wire [7:0] addr;
	output reg [31:0] dout;
	always @(*) begin
		if (_sv2v_0)
			;
		case (addr)
			0: dout = 32'h00000100;
			1: dout = 32'h00000100;
			2: dout = 32'h00000100;
			3: dout = 32'h00000100;
			4: dout = 32'h00000100;
			5: dout = 32'h00000100;
			6: dout = 32'h00000100;
			7: dout = 32'h00000100;
			8: dout = 32'h00000100;
			9: dout = 32'h00000100;
			10: dout = 32'h00000100;
			11: dout = 32'h00000100;
			12: dout = 32'h00000100;
			13: dout = 32'h00000100;
			14: dout = 32'h00000100;
			15: dout = 32'h00000100;
			16: dout = 32'h00000100;
			17: dout = 32'h00000100;
			18: dout = 32'h00000100;
			19: dout = 32'h00000100;
			20: dout = 32'h000000ff;
			21: dout = 32'h000000f8;
			22: dout = 32'h000000ec;
			23: dout = 32'h000000da;
			24: dout = 32'h000000c2;
			25: dout = 32'h000000a6;
			26: dout = 32'h00000085;
			27: dout = 32'h00000061;
			28: dout = 32'h0000003b;
			29: dout = 32'h00000014;
			30: dout = 32'hffffffec;
			31: dout = 32'hffffffc5;
			32: dout = 32'hffffff9f;
			33: dout = 32'hffffff7b;
			34: dout = 32'hffffff5a;
			35: dout = 32'hffffff3e;
			36: dout = 32'hffffff26;
			37: dout = 32'hffffff14;
			38: dout = 32'hffffff08;
			39: dout = 32'hffffff01;
			40: dout = 32'h000000fc;
			41: dout = 32'h000000e4;
			42: dout = 32'h000000b5;
			43: dout = 32'h00000074;
			44: dout = 32'h00000028;
			45: dout = 32'hffffffd8;
			46: dout = 32'hffffff8c;
			47: dout = 32'hffffff4b;
			48: dout = 32'hffffff1c;
			49: dout = 32'hffffff04;
			50: dout = 32'hffffff04;
			51: dout = 32'hffffff1c;
			52: dout = 32'hffffff4b;
			53: dout = 32'hffffff8c;
			54: dout = 32'hffffffd8;
			55: dout = 32'h00000028;
			56: dout = 32'h00000074;
			57: dout = 32'h000000b5;
			58: dout = 32'h000000e4;
			59: dout = 32'h000000fc;
			60: dout = 32'h000000f8;
			61: dout = 32'h000000c2;
			62: dout = 32'h00000061;
			63: dout = 32'hffffffec;
			64: dout = 32'hffffff7b;
			65: dout = 32'hffffff26;
			66: dout = 32'hffffff01;
			67: dout = 32'hffffff14;
			68: dout = 32'hffffff5a;
			69: dout = 32'hffffffc5;
			70: dout = 32'h0000003b;
			71: dout = 32'h000000a6;
			72: dout = 32'h000000ec;
			73: dout = 32'h000000ff;
			74: dout = 32'h000000da;
			75: dout = 32'h00000085;
			76: dout = 32'h00000014;
			77: dout = 32'hffffff9f;
			78: dout = 32'hffffff3e;
			79: dout = 32'hffffff08;
			80: dout = 32'h000000f3;
			81: dout = 32'h00000096;
			82: dout = 32'h00000000;
			83: dout = 32'hffffff6a;
			84: dout = 32'hffffff0d;
			85: dout = 32'hffffff0d;
			86: dout = 32'hffffff6a;
			87: dout = 32'h00000000;
			88: dout = 32'h00000096;
			89: dout = 32'h000000f3;
			90: dout = 32'h000000f3;
			91: dout = 32'h00000096;
			92: dout = 32'h00000000;
			93: dout = 32'hffffff6a;
			94: dout = 32'hffffff0d;
			95: dout = 32'hffffff0d;
			96: dout = 32'hffffff6a;
			97: dout = 32'h00000000;
			98: dout = 32'h00000096;
			99: dout = 32'h000000f3;
			100: dout = 32'h000000ec;
			101: dout = 32'h00000061;
			102: dout = 32'hffffff9f;
			103: dout = 32'hffffff14;
			104: dout = 32'hffffff14;
			105: dout = 32'hffffff9f;
			106: dout = 32'h00000061;
			107: dout = 32'h000000ec;
			108: dout = 32'h000000ec;
			109: dout = 32'h00000061;
			110: dout = 32'hffffff9f;
			111: dout = 32'hffffff14;
			112: dout = 32'hffffff14;
			113: dout = 32'hffffff9f;
			114: dout = 32'h00000061;
			115: dout = 32'h000000ec;
			116: dout = 32'h000000ec;
			117: dout = 32'h00000061;
			118: dout = 32'hffffff9f;
			119: dout = 32'hffffff14;
			120: dout = 32'h000000e4;
			121: dout = 32'h00000028;
			122: dout = 32'hffffff4b;
			123: dout = 32'hffffff04;
			124: dout = 32'hffffff8c;
			125: dout = 32'h00000074;
			126: dout = 32'h000000fc;
			127: dout = 32'h000000b5;
			128: dout = 32'hffffffd8;
			129: dout = 32'hffffff1c;
			130: dout = 32'hffffff1c;
			131: dout = 32'hffffffd8;
			132: dout = 32'h000000b5;
			133: dout = 32'h000000fc;
			134: dout = 32'h00000074;
			135: dout = 32'hffffff8c;
			136: dout = 32'hffffff04;
			137: dout = 32'hffffff4b;
			138: dout = 32'h00000028;
			139: dout = 32'h000000e4;
			default: dout = 1'sb0;
		endcase
	end
	initial _sv2v_0 = 0;
endmodule
module dct (
	clk,
	rst_n,
	in_valid,
	frame_ptr_i,
	energy_in,
	start_i,
	dct_done_o,
	dct_valid_o,
	ceps_out,
	ceps_ptr_o
);
	reg _sv2v_0;
	parameter NUM_CEPS = 12;
	parameter NUM_MEL_FILTERS = 40;
	parameter ENERGIES_WIDTH = 32;
	parameter CEPS_WIDTH = 32;
	parameter DCT_COEFF_WIDTH = 32;
	parameter F = 16;
	parameter NF_LOG2 = $clog2(NUM_MEL_FILTERS);
	parameter NC_LOG2 = $clog2(NUM_CEPS);
	input wire clk;
	input wire rst_n;
	input wire in_valid;
	input wire [NF_LOG2 - 1:0] frame_ptr_i;
	input wire signed [ENERGIES_WIDTH - 1:0] energy_in;
	input wire start_i;
	output reg dct_done_o;
	output reg dct_valid_o;
	output wire [CEPS_WIDTH - 1:0] ceps_out;
	output reg [NC_LOG2 - 1:0] ceps_ptr_o;
	localparam signed [31:0] FACTOR0 = 57;
	localparam signed [31:0] FACTORK = 80;
	reg signed [ENERGIES_WIDTH - 1:0] energies [0:NUM_MEL_FILTERS - 1];
	always @(posedge clk) begin : MEL_BUFFER_INPUT_LOGIC
		if (in_valid)
			energies[frame_ptr_i] <= energy_in;
	end
	reg [NC_LOG2 - 1:0] k_ptr;
	reg [NF_LOG2 - 1:0] n_ptr;
	reg signed [(2 * CEPS_WIDTH) - 1:0] mul_result;
	wire signed [(2 * CEPS_WIDTH) - 1:0] mul_result_temp;
	reg signed [(2 * CEPS_WIDTH) - 1:0] acc;
	reg signed [(2 * CEPS_WIDTH) - 1:0] temp_ceps_out;
	wire signed [ENERGIES_WIDTH - 1:0] signed_filter;
	wire signed [DCT_COEFF_WIDTH - 1:0] cos;
	assign signed_filter = energies[n_ptr];
	localparam ADDR_WIDTH_COS = (NF_LOG2 + NC_LOG2) + 1;
	reg [ADDR_WIDTH_COS - 1:0] cos_addr;
	cos_lut_rom u_cos_lut(
		.addr(cos_addr),
		.dout(cos)
	);
	reg [1:0] dct_current_state;
	reg [1:0] dct_next_state;
	long_mul_fixed #(
		.WIDTH(ENERGIES_WIDTH),
		.F(F)
	) u_mul(
		.a(signed_filter),
		.b(cos),
		.result(mul_result_temp)
	);
	always @(posedge clk)
		if (!rst_n) begin
			dct_current_state <= 2'd0;
			k_ptr <= 1'sb0;
			n_ptr <= 1'sb0;
			ceps_ptr_o <= 1'sb0;
			cos_addr <= 1'sb0;
			acc <= 1'sb0;
			mul_result <= 1'sb0;
			temp_ceps_out <= 1'sb0;
			dct_valid_o <= 1'b0;
			dct_done_o <= 1'b0;
		end
		else begin
			dct_valid_o <= 1'b0;
			dct_done_o <= 1'b0;
			dct_current_state <= dct_next_state;
			case (dct_current_state)
				2'd0:
					if (start_i) begin
						k_ptr <= 1'sb0;
						n_ptr <= 1'sb0;
						acc <= 1'sb0;
						cos_addr <= 1'sb0;
					end
				2'd1: begin
					mul_result <= mul_result_temp;
					acc <= acc + mul_result;
					n_ptr <= n_ptr + 1'b1;
					cos_addr <= cos_addr + 1'b1;
				end
				2'd2: begin
					ceps_ptr_o <= k_ptr;
					cos_addr <= cos_addr - 1'b1;
					if (k_ptr == 0)
						temp_ceps_out <= FACTOR0 * acc;
					else
						temp_ceps_out <= FACTORK * acc;
					k_ptr <= k_ptr + 1'b1;
					n_ptr <= 1'sb0;
					acc <= 1'sb0;
					mul_result <= 1'sb0;
					dct_valid_o <= 1'b1;
				end
				2'd3: dct_done_o <= 1'b1;
				default: begin
					k_ptr <= 1'sb0;
					n_ptr <= 1'sb0;
					acc <= 1'sb0;
				end
			endcase
		end
	always @(*) begin
		if (_sv2v_0)
			;
		dct_next_state = dct_current_state;
		case (dct_current_state)
			2'd0:
				if (start_i)
					dct_next_state = 2'd1;
			2'd1:
				if (n_ptr == NUM_MEL_FILTERS)
					dct_next_state = 2'd2;
			2'd2:
				if (k_ptr == (NUM_CEPS - 1))
					dct_next_state = 2'd3;
				else
					dct_next_state = 2'd1;
			2'd3: dct_next_state = 2'd0;
			default: dct_next_state = 2'd0;
		endcase
	end
	assign ceps_out = temp_ceps_out[(CEPS_WIDTH + F) - 1:F];
	initial _sv2v_0 = 0;
endmodule
module fft_radix2 (
	clk,
	rst_n,
	in_valid,
	frame_ptr_i,
	frame_sample_i,
	start_i,
	fft_done_o,
	power_valid_o,
	power_ptr_o,
	power_sample_o
);
	reg _sv2v_0;
	parameter NFFT = 512;
	parameter WIDTH = 64;
	parameter F = 16;
	parameter NFFT_LOG2 = $clog2(NFFT);
	input wire clk;
	input wire rst_n;
	input wire in_valid;
	input wire [NFFT_LOG2 - 1:0] frame_ptr_i;
	input wire [WIDTH - 1:0] frame_sample_i;
	input wire start_i;
	output reg fft_done_o;
	output reg power_valid_o;
	output reg [NFFT_LOG2 - 1:0] power_ptr_o;
	output reg [WIDTH - 1:0] power_sample_o;
	localparam COMPLEX_WIDTH = WIDTH;
	function automatic [1:0] count_ones_and_mask2bit;
		input reg [NFFT_LOG2 - 1:0] x;
		reg [1:0] count;
		begin
			count = 2'b00;
			begin : sv2v_autoblock_1
				reg signed [31:0] i;
				for (i = 0; i < NFFT_LOG2; i = i + 1)
					count = count + x[i];
			end
			count_ones_and_mask2bit = count;
		end
	endfunction
	wire x0_mem_we;
	wire x1_mem_we;
	wire x2_mem_we;
	wire x3_mem_we;
	wire [NFFT_LOG2 - 1:0] x0_mem_waddr;
	wire [NFFT_LOG2 - 1:0] x1_mem_waddr;
	wire [NFFT_LOG2 - 1:0] x2_mem_waddr;
	wire [NFFT_LOG2 - 1:0] x3_mem_waddr;
	wire [127:0] x0_mem_wdata;
	wire [127:0] x1_mem_wdata;
	wire [127:0] x2_mem_wdata;
	wire [127:0] x3_mem_wdata;
	wire x0_mem_re;
	wire x1_mem_re;
	wire x2_mem_re;
	wire x3_mem_re;
	wire [NFFT_LOG2 - 1:0] x0_mem_raddr;
	wire [NFFT_LOG2 - 1:0] x1_mem_raddr;
	wire [NFFT_LOG2 - 1:0] x2_mem_raddr;
	wire [NFFT_LOG2 - 1:0] x3_mem_raddr;
	wire [127:0] x0_mem_rdata;
	wire [127:0] x1_mem_rdata;
	wire [127:0] x2_mem_rdata;
	wire [127:0] x3_mem_rdata;
	localparam MEM_WIDTH = 128;
	sram_1r1w #(
		.DEPTH(NFFT),
		.WIDTH(MEM_WIDTH),
		.ADDR_W(NFFT_LOG2)
	) u_x_bank0(
		.clk(clk),
		.we(x0_mem_we),
		.waddr(x0_mem_waddr),
		.wdata(x0_mem_wdata),
		.re(x0_mem_re),
		.raddr(x0_mem_raddr),
		.rdata(x0_mem_rdata)
	);
	sram_1r1w #(
		.DEPTH(NFFT),
		.WIDTH(MEM_WIDTH),
		.ADDR_W(NFFT_LOG2)
	) u_x_bank1(
		.clk(clk),
		.we(x1_mem_we),
		.waddr(x1_mem_waddr),
		.wdata(x1_mem_wdata),
		.re(x1_mem_re),
		.raddr(x1_mem_raddr),
		.rdata(x1_mem_rdata)
	);
	sram_1r1w #(
		.DEPTH(NFFT),
		.WIDTH(MEM_WIDTH),
		.ADDR_W(NFFT_LOG2)
	) u_x_bank2(
		.clk(clk),
		.we(x2_mem_we),
		.waddr(x2_mem_waddr),
		.wdata(x2_mem_wdata),
		.re(x2_mem_re),
		.raddr(x2_mem_raddr),
		.rdata(x2_mem_rdata)
	);
	sram_1r1w #(
		.DEPTH(NFFT),
		.WIDTH(MEM_WIDTH),
		.ADDR_W(NFFT_LOG2)
	) u_x_bank3(
		.clk(clk),
		.we(x3_mem_we),
		.waddr(x3_mem_waddr),
		.wdata(x3_mem_wdata),
		.re(x3_mem_re),
		.raddr(x3_mem_raddr),
		.rdata(x3_mem_rdata)
	);
	localparam RFFT_SIZE = NFFT / 2;
	localparam NFFT_LOG22 = $clog2(NFFT_LOG2);
	wire [NFFT_LOG2 - 1:0] frame_ptr_reversal;
	reg [2:0] fft_state;
	reg [(((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) - 1:0] sched;
	reg [(384 + (((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2))) - 1:0] stage1;
	reg [(384 + (((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2))) - 1:0] stage1_ff;
	reg [((((((COMPLEX_WIDTH + COMPLEX_WIDTH) + COMPLEX_WIDTH) + COMPLEX_WIDTH) + 128) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) - 1:0] stage2_mul;
	reg [((256 + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 3:0] stage3_addsub;
	reg [127:0] power_stage1;
	reg [WIDTH - 1:0] power_stage2_re;
	wire [WIDTH - 1:0] stage1_mult_re;
	wire [WIDTH - 1:0] stage1_mult_im;
	reg [WIDTH - 1:0] power_stage2_im;
	reg [WIDTH - 1:0] power_stage3;
	reg power_valid_stage1;
	reg power_valid_stage2;
	reg power_valid_stage3;
	reg [NFFT_LOG2 - 1:0] power_ptr_stage1;
	reg [NFFT_LOG2 - 1:0] power_ptr_stage2;
	reg [NFFT_LOG2 - 1:0] power_ptr_stage3;
	reg [NFFT_LOG2 - 1:0] power_ptr;
	long_mul_fixed #(.F(F)) u_mul_stage1_re(
		.a(power_stage1[63 + WIDTH:64]),
		.b(power_stage1[63 + WIDTH:64]),
		.result(stage1_mult_re)
	);
	long_mul_fixed #(.F(F)) u_mul_stage1_im(
		.a(power_stage1[WIDTH - 1:0]),
		.b(power_stage1[WIDTH - 1:0]),
		.result(stage1_mult_im)
	);
	wire [NFFT_LOG2 - 1:0] even_ptr_sum;
	wire [NFFT_LOG2 - 1:0] odd_ptr_sum;
	assign even_ptr_sum = sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))))) + 1)] + sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) >= ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) - ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) + 1 : (((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) + 1)];
	assign odd_ptr_sum = (sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))))) + 1)] + sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) >= ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) - ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) + 1 : (((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) + 1)]) + sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))) + 1)];
	wire [NFFT_LOG2:0] twiddle_address;
	wire [127:0] twiddle_value;
	assign twiddle_address = sched[(NFFT_LOG2 >= 0 ? ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)) - (NFFT_LOG2 - NFFT_LOG2) : ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0) - NFFT_LOG2):(NFFT_LOG2 >= 0 ? ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)) - NFFT_LOG2 : (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)];
	twiddles_rom u_twiddles(
		.addr(twiddle_address),
		.dout(twiddle_value)
	);
	reg [NFFT_LOG2 - 1:0] rd_addr_a;
	reg [NFFT_LOG2 - 1:0] rd_addr_b;
	reg rd_valid_a;
	reg rd_valid_b;
	always @(*) begin
		if (_sv2v_0)
			;
		rd_addr_a = 1'sb0;
		rd_valid_a = 1'b0;
		case (fft_state)
			3'd1: begin
				rd_addr_a = even_ptr_sum[NFFT_LOG2 - 1:0];
				rd_valid_a = 1'b1;
			end
			3'd2: begin
				rd_addr_a = power_ptr;
				rd_valid_a = 1'b1;
			end
			3'd3: begin
				rd_addr_a = power_ptr + 1;
				rd_valid_a = 1'b1;
			end
			default:
				;
		endcase
	end
	always @(*) begin
		if (_sv2v_0)
			;
		rd_addr_b = 1'sb0;
		rd_valid_b = 1'b0;
		case (fft_state)
			3'd1: begin
				rd_addr_b = odd_ptr_sum[NFFT_LOG2 - 1:0];
				rd_valid_b = 1'b1;
			end
			default:
				;
		endcase
	end
	reg [1:0] bank_a;
	reg [1:0] bank_b;
	always @(*) begin
		if (_sv2v_0)
			;
		bank_a = 2'b00;
		bank_b = 2'b00;
		begin : sv2v_autoblock_2
			reg signed [31:0] i;
			for (i = 0; i < NFFT_LOG2; i = i + 1)
				begin
					bank_a = bank_a + rd_addr_a[i];
					bank_b = bank_b + rd_addr_b[i];
				end
		end
	end
	wire x0_re_a;
	wire x1_re_a;
	wire x2_re_a;
	wire x3_re_a;
	wire x0_re_b;
	wire x1_re_b;
	wire x2_re_b;
	wire x3_re_b;
	reg x0_re_a_prev;
	reg x1_re_a_prev;
	reg x2_re_a_prev;
	reg x3_re_a_prev;
	reg x0_re_b_prev;
	reg x1_re_b_prev;
	reg x2_re_b_prev;
	reg x3_re_b_prev;
	always @(posedge clk)
		if (!rst_n) begin
			x0_re_a_prev <= 0;
			x1_re_a_prev <= 0;
			x2_re_a_prev <= 0;
			x3_re_a_prev <= 0;
			x0_re_b_prev <= 0;
			x1_re_b_prev <= 0;
			x2_re_b_prev <= 0;
			x3_re_b_prev <= 0;
		end
		else begin
			x0_re_a_prev <= x0_re_a;
			x1_re_a_prev <= x1_re_a;
			x2_re_a_prev <= x2_re_a;
			x3_re_a_prev <= x3_re_a;
			x0_re_b_prev <= x0_re_b;
			x1_re_b_prev <= x1_re_b;
			x2_re_b_prev <= x2_re_b;
			x3_re_b_prev <= x3_re_b;
		end
	assign x0_re_a = rd_valid_a && (bank_a == 2'd0);
	assign x1_re_a = rd_valid_a && (bank_a == 2'd1);
	assign x2_re_a = rd_valid_a && (bank_a == 2'd2);
	assign x3_re_a = rd_valid_a && (bank_a == 2'd3);
	assign x0_re_b = rd_valid_b && (bank_b == 2'd0);
	assign x1_re_b = rd_valid_b && (bank_b == 2'd1);
	assign x2_re_b = rd_valid_b && (bank_b == 2'd2);
	assign x3_re_b = rd_valid_b && (bank_b == 2'd3);
	assign x0_mem_re = x0_re_a | x0_re_b;
	assign x1_mem_re = x1_re_a | x1_re_b;
	assign x2_mem_re = x2_re_a | x2_re_b;
	assign x3_mem_re = x3_re_a | x3_re_b;
	assign x0_mem_raddr = (x0_re_a ? rd_addr_a : {NFFT_LOG2 {1'sb0}}) | (x0_re_b ? rd_addr_b : {NFFT_LOG2 {1'sb0}});
	assign x1_mem_raddr = (x1_re_a ? rd_addr_a : {NFFT_LOG2 {1'sb0}}) | (x1_re_b ? rd_addr_b : {NFFT_LOG2 {1'sb0}});
	assign x2_mem_raddr = (x2_re_a ? rd_addr_a : {NFFT_LOG2 {1'sb0}}) | (x2_re_b ? rd_addr_b : {NFFT_LOG2 {1'sb0}});
	assign x3_mem_raddr = (x3_re_a ? rd_addr_a : {NFFT_LOG2 {1'sb0}}) | (x3_re_b ? rd_addr_b : {NFFT_LOG2 {1'sb0}});
	reg [127:0] x_read_even;
	reg [127:0] x_read_odd;
	always @(*) begin
		if (_sv2v_0)
			;
		x_read_even = (((x0_re_a_prev ? x0_mem_rdata : {128 {1'sb0}}) | (x1_re_a_prev ? x1_mem_rdata : {128 {1'sb0}})) | (x2_re_a_prev ? x2_mem_rdata : {128 {1'sb0}})) | (x3_re_a_prev ? x3_mem_rdata : {128 {1'sb0}});
		x_read_odd = (((x0_re_b_prev ? x0_mem_rdata : {128 {1'sb0}}) | (x1_re_b_prev ? x1_mem_rdata : {128 {1'sb0}})) | (x2_re_b_prev ? x2_mem_rdata : {128 {1'sb0}})) | (x3_re_b_prev ? x3_mem_rdata : {128 {1'sb0}});
	end
	always @(posedge clk) begin : FFT_CALCULATION_PIPELINED
		if (!rst_n) begin
			fft_state <= 3'd0;
			sched[(NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))-:(((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) ? (((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) - ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) + 1)] <= 1;
			sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))))) + 1)] <= 0;
			sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) >= ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) - ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) + 1 : (((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) + 1)] <= 0;
			sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) + 1)] <= 2;
			sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))) + 1)] <= 1;
			sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))) + 1)] <= 0;
			sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1-:(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)] <= NFFT >> 1;
			fft_done_o <= 0;
			power_ptr <= 0;
			power_ptr_stage1 <= 0;
			power_ptr_stage2 <= 0;
			power_ptr_stage3 <= 0;
			power_ptr_o <= 0;
			power_valid_stage1 <= 0;
			power_valid_stage2 <= 0;
			power_valid_stage3 <= 0;
			power_valid_o <= 0;
			power_stage3 <= 0;
		end
		else begin
			fft_done_o <= 0;
			stage1_ff[(((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127-:(((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127) >= ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0) ? (((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127) - ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0)) + 1 : (((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0) - ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127)) + 1)] <= {twiddle_value[127:64], twiddle_value[63:0]};
			stage1_ff[(((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) - 1-:((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)] <= sched;
			case (fft_state)
				3'd0:
					if (start_i) begin
						fft_state <= 3'd1;
						sched[(NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))-:(((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) ? (((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) - ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) + 1)] <= 1;
						sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))))) + 1)] <= 0;
						sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) >= ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) - ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) + 1 : (((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) + 1)] <= 0;
						sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) + 1)] <= 2;
						sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))) + 1)] <= 1;
						sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))) + 1)] <= 0;
						sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1-:(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)] <= NFFT >> 1;
						power_ptr <= 0;
					end
				3'd1: begin
					stage1[256 + ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127)-:((256 + ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127)) >= (256 + ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0)) ? ((256 + ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127)) - (256 + ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0))) + 1 : ((256 + ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0)) - (256 + ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127))) + 1)] <= x_read_even;
					stage1[(((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 255-:(((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 255) >= (128 + ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0)) ? (((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 255) - (128 + ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0))) + 1 : ((128 + ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0)) - ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 255)) + 1)] <= x_read_odd;
					stage1[(((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127-:(((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127) >= ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0) ? (((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127) - ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0)) + 1 : (((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0) - ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127)) + 1)] <= stage1_ff[(((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127-:(((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127) >= ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0) ? (((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127) - ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0)) + 1 : (((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0) - ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127)) + 1)];
					stage1[(((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) - 1-:((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)] <= stage1_ff[(((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) - 1-:((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)];
					if (sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) >= ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) - ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) + 1 : (((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) + 1)] < (sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))) + 1)] - 1)) begin
						sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) >= ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) - ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) + 1 : (((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) + 1)] <= sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) >= ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) - ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) + 1 : (((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) + 1)] + 1;
						sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))) + 1)] <= sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))) + 1)] + sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1-:(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)];
					end
					else begin
						sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) >= ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) - ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) + 1 : (((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) + 1)] <= 0;
						sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))) + 1)] <= 0;
						if (sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))))) + 1)] < (NFFT - sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) + 1)]))
							sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))))) + 1)] <= sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))))) + 1)] + sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) + 1)];
						else begin
							sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))))) + 1)] <= 0;
							if (sched[(NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))-:(((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) ? (((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) - ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) + 1)] < NFFT_LOG2[NFFT_LOG22:0]) begin
								sched[(NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))-:(((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) ? (((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) - ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) + 1)] <= sched[(NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))-:(((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) ? (((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) - ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) + 1)] + 1;
								sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) + 1)] <= 1 << (sched[(NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))-:(((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) ? (((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) - ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) + 1)] + 1);
								sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))) + 1)] <= 1 << sched[(NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))-:(((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) ? (((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) - ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) + 1)];
								sched[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1-:(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)] <= NFFT >> (sched[(NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))-:(((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) ? (((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) - ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) + 1)] + 1);
							end
							else
								fft_state <= 3'd2;
						end
					end
				end
				3'd2: begin
					stage1[256 + ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127)-:((256 + ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127)) >= (256 + ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0)) ? ((256 + ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127)) - (256 + ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0))) + 1 : ((256 + ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0)) - (256 + ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127))) + 1)] <= x_read_even;
					stage1[(((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 255-:(((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 255) >= (128 + ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0)) ? (((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 255) - (128 + ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0))) + 1 : ((128 + ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0)) - ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 255)) + 1)] <= x_read_odd;
					stage1[(((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127-:(((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127) >= ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0) ? (((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127) - ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0)) + 1 : (((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0) - ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127)) + 1)] <= stage1_ff[(((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127-:(((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127) >= ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0) ? (((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127) - ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0)) + 1 : (((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0) - ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127)) + 1)];
					stage1[(((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) - 1-:((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)] <= stage1_ff[(((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) - 1-:((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)];
					fft_state <= 3'd3;
					power_ptr <= 0;
				end
				3'd3:
					if (power_ptr_o == RFFT_SIZE)
						fft_state <= 3'd4;
					else begin
						power_ptr <= power_ptr + 1;
						power_stage1 <= x_read_even;
						power_ptr_stage1 <= power_ptr;
						power_valid_stage1 <= 1;
						power_stage2_re <= stage1_mult_re;
						power_stage2_im <= stage1_mult_im;
						power_ptr_stage2 <= power_ptr_stage1;
						power_valid_stage2 <= power_valid_stage1;
						power_stage3 <= power_stage2_re + power_stage2_im;
						power_ptr_stage3 <= power_ptr_stage2;
						power_valid_stage3 <= power_valid_stage2;
						power_sample_o <= power_stage3 >> NFFT_LOG2;
						power_ptr_o <= power_ptr_stage3;
						power_valid_o <= power_valid_stage3;
					end
				3'd4: begin
					fft_done_o <= 1;
					power_ptr <= 0;
					power_ptr_o <= 0;
					power_valid_stage1 <= 0;
					power_valid_stage2 <= 0;
					power_valid_stage3 <= 0;
					power_valid_o <= 0;
					fft_state <= 3'd0;
				end
				default: fft_state <= 3'd0;
			endcase
		end
	end
	wire signed [COMPLEX_WIDTH - 1:0] arbr_result;
	wire signed [COMPLEX_WIDTH - 1:0] aibi_result;
	wire signed [COMPLEX_WIDTH - 1:0] arbi_result;
	wire signed [COMPLEX_WIDTH - 1:0] aibr_result;
	long_mul_fixed #(.F(F)) u_mul_arbr(
		.a($signed(stage1[(((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127-:64])),
		.b($signed(stage1[(((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 255-:64])),
		.result(arbr_result)
	);
	long_mul_fixed #(.F(F)) u_mul_aibi(
		.a($signed(stage1[(((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 63-:64])),
		.b($signed(stage1[(((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 191-:64])),
		.result(aibi_result)
	);
	long_mul_fixed #(.F(F)) u_mul_arbi(
		.a($signed(stage1[(((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127-:64])),
		.b($signed(stage1[(((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 191-:64])),
		.result(arbi_result)
	);
	long_mul_fixed #(.F(F)) u_mul_aibr(
		.a($signed(stage1[(((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 63-:64])),
		.b($signed(stage1[(((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 255-:64])),
		.result(aibr_result)
	);
	always @(posedge clk) begin
		stage2_mul[COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))-:((COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) >= (COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) ? ((COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) - (COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))))) + 1 : ((COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) - (COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))))) + 1)] <= arbr_result;
		stage2_mul[COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))-:((COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) >= (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) ? ((COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) - (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) + 1 : ((COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) - (COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) + 1)] <= aibi_result;
		stage2_mul[COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))-:((COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) >= (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) ? ((COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) - (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) + 1 : ((COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) - (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) + 1)] <= arbi_result;
		stage2_mul[COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))-:((COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))) >= (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))) ? ((COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))) - (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) + 1 : ((128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))) - (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) + 1)] <= aibr_result;
		stage2_mul[128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))-:((128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)) ? ((128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)) - (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))) + 1)] <= stage1[256 + ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127)-:((256 + ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127)) >= (256 + ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0)) ? ((256 + ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127)) - (256 + ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0))) + 1 : ((256 + ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 0)) - (256 + ((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + 127))) + 1)];
		stage2_mul[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))) + 1)] <= stage1[((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) - 1) - (((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) - 1) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))))) + 1)] + stage1[((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) - 1) - (((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) - 1) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) >= ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) - ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) + 1 : (((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) + 1)];
		stage2_mul[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1-:(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)] <= (stage1[((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) - 1) - (((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) - 1) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))))) + 1)] + stage1[((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) - 1) - (((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) - 1) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) >= ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) - ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) + 1 : (((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) + 1)]) + stage1[((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) - 1) - (((((((((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG22 >= 0 ? NFFT_LOG22 + 1 : 1 - NFFT_LOG22)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) + (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)) - 1) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))) + 1)];
	end
	reg [1:0] count_addr_even;
	reg [1:0] count_addr_odd;
	always @(*) begin
		if (_sv2v_0)
			;
		count_addr_even = 2'b00;
		count_addr_odd = 2'b00;
		begin : sv2v_autoblock_3
			reg signed [31:0] i;
			for (i = 0; i < NFFT_LOG2; i = i + 1)
				begin
					count_addr_even = count_addr_even + stage2_mul[(NFFT_LOG2 >= 0 ? ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)) - (NFFT_LOG2 - i) : ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0) - i)];
					count_addr_odd = count_addr_odd + stage2_mul[(NFFT_LOG2 >= 0 ? ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1) - (NFFT_LOG2 - i) : -i)];
				end
		end
	end
	always @(posedge clk) begin
		stage3_addsub[256 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))-:64] <= $signed(stage2_mul[128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))-:64]) + ($signed(stage2_mul[COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))-:((COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) >= (COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) ? ((COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) - (COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))))) + 1 : ((COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) - (COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))))) + 1)]) - $signed(stage2_mul[COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))-:((COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) >= (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) ? ((COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) - (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) + 1 : ((COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) - (COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) + 1)]));
		stage3_addsub[(256 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))) - 64-:64] <= $signed(stage2_mul[(128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))) - 64-:64]) + ($signed(stage2_mul[COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))-:((COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) >= (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) ? ((COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) - (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) + 1 : ((COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) - (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) + 1)]) + $signed(stage2_mul[COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))-:((COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))) >= (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))) ? ((COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))) - (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) + 1 : ((128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))) - (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) + 1)]));
		stage3_addsub[128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))-:64] <= $signed(stage2_mul[128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))-:64]) - ($signed(stage2_mul[COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))-:((COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) >= (COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) ? ((COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) - (COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))))) + 1 : ((COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) - (COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))))) + 1)]) - $signed(stage2_mul[COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))-:((COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) >= (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) ? ((COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) - (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))))) + 1 : ((COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) - (COMPLEX_WIDTH + (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))))) + 1)]));
		stage3_addsub[(128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))) - 64-:64] <= $signed(stage2_mul[(128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))) - 64-:64]) - ($signed(stage2_mul[COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))-:((COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) >= (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) ? ((COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) - (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))))) + 1 : ((COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) - (COMPLEX_WIDTH + (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))))) + 1)]) + $signed(stage2_mul[COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))-:((COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))) >= (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))) ? ((COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)))) - (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)))) + 1 : ((128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0))) - (COMPLEX_WIDTH + (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))))) + 1)]));
		stage3_addsub[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3)-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3)) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3)) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4)) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))) + 1)] <= stage2_mul[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0) ? (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1)) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0)) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1))) + 1)];
		stage3_addsub[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3-:(((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3) >= 4 ? (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 0 : 5 - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))] <= stage2_mul[(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) - 1-:(NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2)];
		stage3_addsub[3-:2] <= count_addr_even;
		stage3_addsub[1-:2] <= count_addr_odd;
	end
	reg [NFFT_LOG2 - 1:0] x0_write_addr_even;
	reg [NFFT_LOG2 - 1:0] x1_write_addr_even;
	reg [NFFT_LOG2 - 1:0] x2_write_addr_even;
	reg [NFFT_LOG2 - 1:0] x3_write_addr_even;
	reg x0_write_en_even;
	reg x1_write_en_even;
	reg x2_write_en_even;
	reg x3_write_en_even;
	reg [127:0] x0_write_data_even;
	reg [127:0] x1_write_data_even;
	reg [127:0] x2_write_data_even;
	reg [127:0] x3_write_data_even;
	reg [NFFT_LOG2 - 1:0] x0_write_addr_odd;
	reg [NFFT_LOG2 - 1:0] x1_write_addr_odd;
	reg [NFFT_LOG2 - 1:0] x2_write_addr_odd;
	reg [NFFT_LOG2 - 1:0] x3_write_addr_odd;
	reg x0_write_en_odd;
	reg x1_write_en_odd;
	reg x2_write_en_odd;
	reg x3_write_en_odd;
	reg [127:0] x0_write_data_odd;
	reg [127:0] x1_write_data_odd;
	reg [127:0] x2_write_data_odd;
	reg [127:0] x3_write_data_odd;
	reg [NFFT_LOG2 - 1:0] x0_write_addr_idle;
	reg [NFFT_LOG2 - 1:0] x1_write_addr_idle;
	reg [NFFT_LOG2 - 1:0] x2_write_addr_idle;
	reg [NFFT_LOG2 - 1:0] x3_write_addr_idle;
	reg x0_write_en_idle;
	reg x1_write_en_idle;
	reg x2_write_en_idle;
	reg x3_write_en_idle;
	reg [127:0] x0_write_data_idle;
	reg [127:0] x1_write_data_idle;
	reg [127:0] x2_write_data_idle;
	reg [127:0] x3_write_data_idle;
	reg [3:0] wb_valid_pipe;
	always @(posedge clk)
		if (!rst_n)
			wb_valid_pipe <= 3'b000;
		else
			wb_valid_pipe <= {wb_valid_pipe[2:0], fft_state == 3'd1};
	always @(*) begin
		if (_sv2v_0)
			;
		x0_write_en_odd = 1'sb0;
		x1_write_en_odd = 1'sb0;
		x2_write_en_odd = 1'sb0;
		x3_write_en_odd = 1'sb0;
		x0_write_addr_odd = 1'sb0;
		x1_write_addr_odd = 1'sb0;
		x2_write_addr_odd = 1'sb0;
		x3_write_addr_odd = 1'sb0;
		x0_write_data_odd = 1'sb0;
		x1_write_data_odd = 1'sb0;
		x2_write_data_odd = 1'sb0;
		x3_write_data_odd = 1'sb0;
		if ((((fft_state == 3'd1) && wb_valid_pipe[3]) || (fft_state == 3'd2)) || ((fft_state == 3'd3) && (power_ptr < 3)))
			case (stage3_addsub[1-:2])
				2'd0: begin
					x0_write_en_odd = 1;
					x0_write_addr_odd = stage3_addsub[(NFFT_LOG2 >= 0 ? ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3) - (NFFT_LOG2 - (NFFT_LOG2 - 1)) : 4 + (1 - NFFT_LOG2)):(NFFT_LOG2 >= 0 ? ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3) - NFFT_LOG2 : 4)];
					x0_write_data_odd = stage3_addsub[128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))-:((128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4)) ? ((128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4)) - (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3)))) + 1)];
				end
				2'd1: begin
					x1_write_en_odd = 1;
					x1_write_addr_odd = stage3_addsub[(NFFT_LOG2 >= 0 ? ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3) - (NFFT_LOG2 - (NFFT_LOG2 - 1)) : 4 + (1 - NFFT_LOG2)):(NFFT_LOG2 >= 0 ? ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3) - NFFT_LOG2 : 4)];
					x1_write_data_odd = stage3_addsub[128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))-:((128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4)) ? ((128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4)) - (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3)))) + 1)];
				end
				2'd2: begin
					x2_write_en_odd = 1;
					x2_write_addr_odd = stage3_addsub[(NFFT_LOG2 >= 0 ? ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3) - (NFFT_LOG2 - (NFFT_LOG2 - 1)) : 4 + (1 - NFFT_LOG2)):(NFFT_LOG2 >= 0 ? ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3) - NFFT_LOG2 : 4)];
					x2_write_data_odd = stage3_addsub[128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))-:((128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4)) ? ((128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4)) - (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3)))) + 1)];
				end
				2'd3: begin
					x3_write_en_odd = 1;
					x3_write_addr_odd = stage3_addsub[(NFFT_LOG2 >= 0 ? ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3) - (NFFT_LOG2 - (NFFT_LOG2 - 1)) : 4 + (1 - NFFT_LOG2)):(NFFT_LOG2 >= 0 ? ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3) - NFFT_LOG2 : 4)];
					x3_write_data_odd = stage3_addsub[128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))-:((128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))) >= ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4)) ? ((128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))) - ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4))) + 1 : (((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4)) - (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3)))) + 1)];
				end
			endcase
	end
	always @(*) begin
		if (_sv2v_0)
			;
		x0_write_en_even = 1'sb0;
		x1_write_en_even = 1'sb0;
		x2_write_en_even = 1'sb0;
		x3_write_en_even = 1'sb0;
		x0_write_addr_even = 1'sb0;
		x1_write_addr_even = 1'sb0;
		x2_write_addr_even = 1'sb0;
		x3_write_addr_even = 1'sb0;
		x0_write_data_even = 1'sb0;
		x1_write_data_even = 1'sb0;
		x2_write_data_even = 1'sb0;
		x3_write_data_even = 1'sb0;
		if ((((fft_state == 3'd1) && wb_valid_pipe[3]) || (fft_state == 3'd2)) || ((fft_state == 3'd3) && (power_ptr < 3)))
			case (stage3_addsub[3-:2])
				2'd0: begin
					x0_write_en_even = 1;
					x0_write_addr_even = stage3_addsub[(NFFT_LOG2 >= 0 ? ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3)) - (NFFT_LOG2 - (NFFT_LOG2 - 1)) : ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4) + (1 - NFFT_LOG2)):(NFFT_LOG2 >= 0 ? ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3)) - NFFT_LOG2 : (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4)];
					x0_write_data_even = stage3_addsub[256 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))-:((256 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))) >= (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4))) ? ((256 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))) - (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4)))) + 1 : ((128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4))) - (256 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3)))) + 1)];
				end
				2'd1: begin
					x1_write_en_even = 1;
					x1_write_addr_even = stage3_addsub[(NFFT_LOG2 >= 0 ? ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3)) - (NFFT_LOG2 - (NFFT_LOG2 - 1)) : ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4) + (1 - NFFT_LOG2)):(NFFT_LOG2 >= 0 ? ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3)) - NFFT_LOG2 : (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4)];
					x1_write_data_even = stage3_addsub[256 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))-:((256 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))) >= (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4))) ? ((256 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))) - (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4)))) + 1 : ((128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4))) - (256 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3)))) + 1)];
				end
				2'd2: begin
					x2_write_en_even = 1;
					x2_write_addr_even = stage3_addsub[(NFFT_LOG2 >= 0 ? ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3)) - (NFFT_LOG2 - (NFFT_LOG2 - 1)) : ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4) + (1 - NFFT_LOG2)):(NFFT_LOG2 >= 0 ? ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3)) - NFFT_LOG2 : (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4)];
					x2_write_data_even = stage3_addsub[256 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))-:((256 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))) >= (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4))) ? ((256 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))) - (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4)))) + 1 : ((128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4))) - (256 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3)))) + 1)];
				end
				2'd3: begin
					x3_write_en_even = 1;
					x3_write_addr_even = stage3_addsub[(NFFT_LOG2 >= 0 ? ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3)) - (NFFT_LOG2 - (NFFT_LOG2 - 1)) : ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4) + (1 - NFFT_LOG2)):(NFFT_LOG2 >= 0 ? ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3)) - NFFT_LOG2 : (NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4)];
					x3_write_data_even = stage3_addsub[256 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))-:((256 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))) >= (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4))) ? ((256 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3))) - (128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4)))) + 1 : ((128 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 4))) - (256 + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + ((NFFT_LOG2 >= 0 ? NFFT_LOG2 + 1 : 1 - NFFT_LOG2) + 3)))) + 1)];
				end
			endcase
	end
	reg [1:0] count_frame_ptr_reversal;
	always @(*) begin
		if (_sv2v_0)
			;
		count_frame_ptr_reversal = 2'b00;
		begin : sv2v_autoblock_4
			reg signed [31:0] i;
			for (i = 0; i < NFFT_LOG2; i = i + 1)
				count_frame_ptr_reversal = count_frame_ptr_reversal + frame_ptr_reversal[i];
		end
	end
	function automatic signed [COMPLEX_WIDTH - 1:0] sv2v_cast_1661E_signed;
		input reg signed [COMPLEX_WIDTH - 1:0] inp;
		sv2v_cast_1661E_signed = inp;
	endfunction
	always @(*) begin
		if (_sv2v_0)
			;
		x0_write_en_idle = 1'sb0;
		x1_write_en_idle = 1'sb0;
		x2_write_en_idle = 1'sb0;
		x3_write_en_idle = 1'sb0;
		x0_write_addr_idle = 1'sb0;
		x1_write_addr_idle = 1'sb0;
		x2_write_addr_idle = 1'sb0;
		x3_write_addr_idle = 1'sb0;
		x0_write_data_idle = 1'sb0;
		x1_write_data_idle = 1'sb0;
		x2_write_data_idle = 1'sb0;
		x3_write_data_idle = 1'sb0;
		if (in_valid && (fft_state == 3'd0)) begin
			x0_write_addr_idle = frame_ptr_reversal;
			x1_write_addr_idle = frame_ptr_reversal;
			x2_write_addr_idle = frame_ptr_reversal;
			x3_write_addr_idle = frame_ptr_reversal;
			x0_write_en_idle = count_frame_ptr_reversal == 2'b00;
			x1_write_en_idle = count_frame_ptr_reversal == 2'b01;
			x2_write_en_idle = count_frame_ptr_reversal == 2'b10;
			x3_write_en_idle = count_frame_ptr_reversal == 2'b11;
			x0_write_data_idle = {frame_sample_i, sv2v_cast_1661E_signed(0)};
			x1_write_data_idle = {frame_sample_i, sv2v_cast_1661E_signed(0)};
			x2_write_data_idle = {frame_sample_i, sv2v_cast_1661E_signed(0)};
			x3_write_data_idle = {frame_sample_i, sv2v_cast_1661E_signed(0)};
		end
	end
	assign x0_mem_waddr = (fft_state == 3'd0 ? x0_write_addr_idle : x0_write_addr_even | x0_write_addr_odd);
	assign x1_mem_waddr = (fft_state == 3'd0 ? x1_write_addr_idle : x1_write_addr_even | x1_write_addr_odd);
	assign x2_mem_waddr = (fft_state == 3'd0 ? x2_write_addr_idle : x2_write_addr_even | x2_write_addr_odd);
	assign x3_mem_waddr = (fft_state == 3'd0 ? x3_write_addr_idle : x3_write_addr_even | x3_write_addr_odd);
	assign x0_mem_we = (fft_state == 3'd0 ? x0_write_en_idle : x0_write_en_even | x0_write_en_odd);
	assign x1_mem_we = (fft_state == 3'd0 ? x1_write_en_idle : x1_write_en_even | x1_write_en_odd);
	assign x2_mem_we = (fft_state == 3'd0 ? x2_write_en_idle : x2_write_en_even | x2_write_en_odd);
	assign x3_mem_we = (fft_state == 3'd0 ? x3_write_en_idle : x3_write_en_even | x3_write_en_odd);
	assign x0_mem_wdata = (fft_state == 3'd0 ? x0_write_data_idle : x0_write_data_even | x0_write_data_odd);
	assign x1_mem_wdata = (fft_state == 3'd0 ? x1_write_data_idle : x1_write_data_even | x1_write_data_odd);
	assign x2_mem_wdata = (fft_state == 3'd0 ? x2_write_data_idle : x2_write_data_even | x2_write_data_odd);
	assign x3_mem_wdata = (fft_state == 3'd0 ? x3_write_data_idle : x3_write_data_even | x3_write_data_odd);
	genvar _gv_k_1;
	generate
		for (_gv_k_1 = 0; _gv_k_1 < NFFT_LOG2; _gv_k_1 = _gv_k_1 + 1) begin : bit_reverse
			localparam k = _gv_k_1;
			assign frame_ptr_reversal[k] = frame_ptr_i[(NFFT_LOG2 - 1) - k];
		end
	endgenerate
	initial _sv2v_0 = 0;
endmodule
module fifo (
	clk,
	rst_n,
	wr_en_i,
	rd_en_i,
	write_data_i,
	full_o,
	empty_o,
	read_data_o
);
	parameter DEPTH = 32;
	parameter WIDTH = 64;
	input wire clk;
	input wire rst_n;
	input wire wr_en_i;
	input wire rd_en_i;
	input wire [WIDTH - 1:0] write_data_i;
	output wire full_o;
	output wire empty_o;
	output reg [WIDTH - 1:0] read_data_o;
	localparam PTR_WIDTH = $clog2(DEPTH);
	reg [PTR_WIDTH - 1:0] read_ptr;
	reg [PTR_WIDTH - 1:0] write_ptr;
	reg [WIDTH - 1:0] memory [0:DEPTH - 1];
	always @(posedge clk)
		if (!rst_n)
			read_data_o <= 1'sb0;
		else if (rd_en_i && !empty_o)
			read_data_o <= memory[read_ptr];
	always @(posedge clk)
		if ((rst_n && wr_en_i) && !full_o)
			memory[write_ptr] <= write_data_i;
	always @(posedge clk)
		if (!rst_n)
			read_ptr <= 1'sb0;
		else if (rd_en_i && !empty_o)
			read_ptr <= read_ptr + 1'b1;
	always @(posedge clk)
		if (!rst_n)
			write_ptr <= 1'sb0;
		else if (wr_en_i && !full_o)
			write_ptr <= write_ptr + 1'b1;
	assign empty_o = write_ptr == read_ptr;
	assign full_o = (write_ptr + 1'b1) == read_ptr;
endmodule
module hamming_rom (
	addr,
	dout
);
	reg _sv2v_0;
	input wire [7:0] addr;
	output reg [31:0] dout;
	always @(*) begin
		if (_sv2v_0)
			;
		case (addr)
			0: dout = 32'h00000014;
			1: dout = 32'h00000014;
			2: dout = 32'h00000014;
			3: dout = 32'h00000014;
			4: dout = 32'h00000015;
			5: dout = 32'h00000015;
			6: dout = 32'h00000015;
			7: dout = 32'h00000016;
			8: dout = 32'h00000016;
			9: dout = 32'h00000017;
			10: dout = 32'h00000018;
			11: dout = 32'h00000018;
			12: dout = 32'h00000019;
			13: dout = 32'h0000001a;
			14: dout = 32'h0000001b;
			15: dout = 32'h0000001c;
			16: dout = 32'h0000001d;
			17: dout = 32'h0000001e;
			18: dout = 32'h0000001f;
			19: dout = 32'h00000021;
			20: dout = 32'h00000022;
			21: dout = 32'h00000023;
			22: dout = 32'h00000025;
			23: dout = 32'h00000026;
			24: dout = 32'h00000028;
			25: dout = 32'h0000002a;
			26: dout = 32'h0000002b;
			27: dout = 32'h0000002d;
			28: dout = 32'h0000002f;
			29: dout = 32'h00000031;
			30: dout = 32'h00000033;
			31: dout = 32'h00000035;
			32: dout = 32'h00000037;
			33: dout = 32'h00000039;
			34: dout = 32'h0000003b;
			35: dout = 32'h0000003d;
			36: dout = 32'h0000003f;
			37: dout = 32'h00000042;
			38: dout = 32'h00000044;
			39: dout = 32'h00000046;
			40: dout = 32'h00000049;
			41: dout = 32'h0000004b;
			42: dout = 32'h0000004e;
			43: dout = 32'h00000050;
			44: dout = 32'h00000053;
			45: dout = 32'h00000055;
			46: dout = 32'h00000058;
			47: dout = 32'h0000005b;
			48: dout = 32'h0000005d;
			49: dout = 32'h00000060;
			50: dout = 32'h00000063;
			51: dout = 32'h00000065;
			52: dout = 32'h00000068;
			53: dout = 32'h0000006b;
			54: dout = 32'h0000006e;
			55: dout = 32'h00000071;
			56: dout = 32'h00000073;
			57: dout = 32'h00000076;
			58: dout = 32'h00000079;
			59: dout = 32'h0000007c;
			60: dout = 32'h0000007f;
			61: dout = 32'h00000082;
			62: dout = 32'h00000085;
			63: dout = 32'h00000088;
			64: dout = 32'h0000008a;
			65: dout = 32'h0000008d;
			66: dout = 32'h00000090;
			67: dout = 32'h00000093;
			68: dout = 32'h00000096;
			69: dout = 32'h00000099;
			70: dout = 32'h0000009c;
			71: dout = 32'h0000009f;
			72: dout = 32'h000000a2;
			73: dout = 32'h000000a4;
			74: dout = 32'h000000a7;
			75: dout = 32'h000000aa;
			76: dout = 32'h000000ad;
			77: dout = 32'h000000b0;
			78: dout = 32'h000000b2;
			79: dout = 32'h000000b5;
			80: dout = 32'h000000b8;
			81: dout = 32'h000000ba;
			82: dout = 32'h000000bd;
			83: dout = 32'h000000c0;
			84: dout = 32'h000000c2;
			85: dout = 32'h000000c5;
			86: dout = 32'h000000c7;
			87: dout = 32'h000000ca;
			88: dout = 32'h000000cc;
			89: dout = 32'h000000ce;
			90: dout = 32'h000000d1;
			91: dout = 32'h000000d3;
			92: dout = 32'h000000d5;
			93: dout = 32'h000000d7;
			94: dout = 32'h000000da;
			95: dout = 32'h000000dc;
			96: dout = 32'h000000de;
			97: dout = 32'h000000e0;
			98: dout = 32'h000000e2;
			99: dout = 32'h000000e4;
			100: dout = 32'h000000e5;
			101: dout = 32'h000000e7;
			102: dout = 32'h000000e9;
			103: dout = 32'h000000eb;
			104: dout = 32'h000000ec;
			105: dout = 32'h000000ee;
			106: dout = 32'h000000ef;
			107: dout = 32'h000000f1;
			108: dout = 32'h000000f2;
			109: dout = 32'h000000f3;
			110: dout = 32'h000000f5;
			111: dout = 32'h000000f6;
			112: dout = 32'h000000f7;
			113: dout = 32'h000000f8;
			114: dout = 32'h000000f9;
			115: dout = 32'h000000fa;
			116: dout = 32'h000000fb;
			117: dout = 32'h000000fc;
			118: dout = 32'h000000fc;
			119: dout = 32'h000000fd;
			120: dout = 32'h000000fd;
			121: dout = 32'h000000fe;
			122: dout = 32'h000000fe;
			123: dout = 32'h000000ff;
			124: dout = 32'h000000ff;
			125: dout = 32'h000000ff;
			126: dout = 32'h000000ff;
			127: dout = 32'h000000ff;
			128: dout = 32'h000000ff;
			129: dout = 32'h000000ff;
			130: dout = 32'h000000ff;
			131: dout = 32'h000000ff;
			132: dout = 32'h000000ff;
			133: dout = 32'h000000fe;
			134: dout = 32'h000000fe;
			135: dout = 32'h000000fd;
			136: dout = 32'h000000fd;
			137: dout = 32'h000000fc;
			138: dout = 32'h000000fc;
			139: dout = 32'h000000fb;
			140: dout = 32'h000000fa;
			141: dout = 32'h000000f9;
			142: dout = 32'h000000f8;
			143: dout = 32'h000000f7;
			144: dout = 32'h000000f6;
			145: dout = 32'h000000f5;
			146: dout = 32'h000000f3;
			147: dout = 32'h000000f2;
			148: dout = 32'h000000f1;
			149: dout = 32'h000000ef;
			150: dout = 32'h000000ee;
			151: dout = 32'h000000ec;
			152: dout = 32'h000000eb;
			153: dout = 32'h000000e9;
			154: dout = 32'h000000e7;
			155: dout = 32'h000000e5;
			156: dout = 32'h000000e4;
			157: dout = 32'h000000e2;
			158: dout = 32'h000000e0;
			159: dout = 32'h000000de;
			160: dout = 32'h000000dc;
			161: dout = 32'h000000da;
			162: dout = 32'h000000d7;
			163: dout = 32'h000000d5;
			164: dout = 32'h000000d3;
			165: dout = 32'h000000d1;
			166: dout = 32'h000000ce;
			167: dout = 32'h000000cc;
			168: dout = 32'h000000ca;
			169: dout = 32'h000000c7;
			170: dout = 32'h000000c5;
			171: dout = 32'h000000c2;
			172: dout = 32'h000000c0;
			173: dout = 32'h000000bd;
			174: dout = 32'h000000ba;
			175: dout = 32'h000000b8;
			176: dout = 32'h000000b5;
			177: dout = 32'h000000b2;
			178: dout = 32'h000000b0;
			179: dout = 32'h000000ad;
			180: dout = 32'h000000aa;
			181: dout = 32'h000000a7;
			182: dout = 32'h000000a4;
			183: dout = 32'h000000a2;
			184: dout = 32'h0000009f;
			185: dout = 32'h0000009c;
			186: dout = 32'h00000099;
			187: dout = 32'h00000096;
			188: dout = 32'h00000093;
			189: dout = 32'h00000090;
			190: dout = 32'h0000008d;
			191: dout = 32'h0000008a;
			192: dout = 32'h00000088;
			193: dout = 32'h00000085;
			194: dout = 32'h00000082;
			195: dout = 32'h0000007f;
			196: dout = 32'h0000007c;
			197: dout = 32'h00000079;
			198: dout = 32'h00000076;
			199: dout = 32'h00000073;
			200: dout = 32'h00000071;
			201: dout = 32'h0000006e;
			202: dout = 32'h0000006b;
			203: dout = 32'h00000068;
			204: dout = 32'h00000065;
			205: dout = 32'h00000063;
			206: dout = 32'h00000060;
			207: dout = 32'h0000005d;
			208: dout = 32'h0000005b;
			209: dout = 32'h00000058;
			210: dout = 32'h00000055;
			211: dout = 32'h00000053;
			212: dout = 32'h00000050;
			213: dout = 32'h0000004e;
			214: dout = 32'h0000004b;
			215: dout = 32'h00000049;
			216: dout = 32'h00000046;
			217: dout = 32'h00000044;
			218: dout = 32'h00000042;
			219: dout = 32'h0000003f;
			220: dout = 32'h0000003d;
			221: dout = 32'h0000003b;
			222: dout = 32'h00000039;
			223: dout = 32'h00000037;
			224: dout = 32'h00000035;
			225: dout = 32'h00000033;
			226: dout = 32'h00000031;
			227: dout = 32'h0000002f;
			228: dout = 32'h0000002d;
			229: dout = 32'h0000002b;
			230: dout = 32'h0000002a;
			231: dout = 32'h00000028;
			232: dout = 32'h00000026;
			233: dout = 32'h00000025;
			234: dout = 32'h00000023;
			235: dout = 32'h00000022;
			236: dout = 32'h00000021;
			237: dout = 32'h0000001f;
			238: dout = 32'h0000001e;
			239: dout = 32'h0000001d;
			240: dout = 32'h0000001c;
			241: dout = 32'h0000001b;
			242: dout = 32'h0000001a;
			243: dout = 32'h00000019;
			244: dout = 32'h00000018;
			245: dout = 32'h00000018;
			246: dout = 32'h00000017;
			247: dout = 32'h00000016;
			248: dout = 32'h00000016;
			249: dout = 32'h00000015;
			250: dout = 32'h00000015;
			251: dout = 32'h00000015;
			252: dout = 32'h00000014;
			253: dout = 32'h00000014;
			254: dout = 32'h00000014;
			255: dout = 32'h00000014;
			default: dout = 1'sb0;
		endcase
	end
	initial _sv2v_0 = 0;
endmodule
module hamming_window (
	clk,
	rst_n,
	start_i,
	valid_to_read_i,
	frame_ptr_o,
	frame_sample_i,
	hamming_sample_o,
	out_valid_o,
	done_o
);
	parameter N = 64;
	parameter F = 16;
	parameter NUM_COEFFICIENTS = 400;
	parameter NFFT_SIZE = 512;
	parameter NFFT_LOG2 = $clog2(NFFT_SIZE);
	input wire clk;
	input wire rst_n;
	input wire start_i;
	input wire valid_to_read_i;
	output wire [NFFT_LOG2 - 1:0] frame_ptr_o;
	input wire signed [N - 1:0] frame_sample_i;
	output wire signed [N - 1:0] hamming_sample_o;
	output wire out_valid_o;
	output reg done_o;
	localparam NUM_COEFFICIENTS_LOG2 = $clog2(NUM_COEFFICIENTS);
	localparam NFFT_SIZE_COMPAIR = NFFT_SIZE - 1;
	reg [1:0] hamming_state;
	reg [NUM_COEFFICIENTS_LOG2 - 1:0] calc_pointer;
	reg [NFFT_LOG2:0] frame_ptr;
	wire signed [N - 1:0] hamming_coefficient;
	reg signed [(2 * N) - 1:0] hamming_sample_temp;
	hamming_rom hamming_rom_uut(
		.addr(calc_pointer),
		.dout(hamming_coefficient)
	);
	reg [NFFT_LOG2 - 1:0] temp_ptr;
	reg temp_valid;
	reg done;
	always @(posedge clk) begin
		done <= 0;
		done_o <= done;
		if (!rst_n) begin
			hamming_state <= 2'd0;
			frame_ptr <= 0;
			temp_ptr <= 0;
		end
		else begin
			temp_valid <= 0;
			case (hamming_state)
				2'd0:
					if (start_i) begin
						hamming_state <= 2'd1;
						calc_pointer <= 0;
						frame_ptr <= 0;
						temp_ptr <= 0;
						temp_valid <= 0;
					end
				2'd1:
					if (valid_to_read_i) begin
						hamming_sample_temp <= frame_sample_i * hamming_coefficient;
						temp_valid <= 1;
						frame_ptr <= frame_ptr + 1;
						temp_ptr <= frame_ptr;
						if (calc_pointer == (NUM_COEFFICIENTS - 1))
							hamming_state <= 2'd2;
						else begin
							calc_pointer <= calc_pointer + 1;
							hamming_state <= 2'd1;
						end
					end
				2'd2:
					if (frame_ptr < NFFT_SIZE_COMPAIR[NFFT_LOG2 - 1:0]) begin
						temp_valid <= 1;
						hamming_sample_temp <= 0;
						frame_ptr <= frame_ptr + 1;
						temp_ptr <= frame_ptr;
					end
					else begin
						if (frame_ptr == (NFFT_SIZE - 1)) begin
							temp_valid <= 1;
							hamming_sample_temp <= 0;
							temp_ptr <= frame_ptr;
						end
						hamming_state <= 2'd3;
					end
				2'd3: begin
					temp_valid <= 0;
					done <= 1;
					hamming_state <= 2'd0;
				end
				default: hamming_state <= 2'd0;
			endcase
		end
	end
	always @(posedge clk)
		;
	assign frame_ptr_o = temp_ptr;
	assign out_valid_o = temp_valid;
	assign hamming_sample_o = hamming_sample_temp[(N + F) - 1:F];
endmodule
module log2_fp_pipelined (
	clk,
	rst_n,
	valid_i,
	x,
	ptr_i,
	done_i,
	ptr_o,
	done_o,
	valid_o,
	result
);
	reg _sv2v_0;
	parameter signed [31:0] F = 16;
	parameter signed [31:0] WIDTH_ADDR = 16;
	parameter signed [31:0] WIDTH_RESULT = 64;
	input wire clk;
	input wire rst_n;
	input wire valid_i;
	input wire signed [WIDTH_RESULT - 1:0] x;
	input wire [WIDTH_ADDR - 1:0] ptr_i;
	input wire done_i;
	output reg [WIDTH_ADDR - 1:0] ptr_o;
	output reg done_o;
	output reg valid_o;
	output reg signed [WIDTH_RESULT - 1:0] result;
	localparam signed [31:0] W = F + 1;
	localparam signed [31:0] P = 2 * W;
	localparam signed [31:0] S = F + 2;
	reg [W - 1:0] x_pipe [0:F];
	reg [F - 1:0] frac_pipe [0:F];
	reg signed [63:0] int_pipe [0:F];
	reg special_pipe [0:F];
	reg [F:0] valid_pipe;
	reg [WIDTH_ADDR - 1:0] ptr_pipe [0:F];
	reg [F:0] done_pipe;
	reg [63:0] xu;
	reg [63:0] shifted_x;
	reg [W - 1:0] normalized_x;
	reg signed [63:0] int_scaled;
	reg special_d;
	integer k;
	integer shift_amt;
	integer i;
	always @(*) begin
		if (_sv2v_0)
			;
		xu = 64'd0;
		shifted_x = 64'd0;
		normalized_x = 1'sb0;
		int_scaled = 64'sd0;
		special_d = 1'b0;
		k = 0;
		shift_amt = 0;
		if (x <= 0)
			special_d = 1'b1;
		else begin
			xu = x;
			for (i = 0; i < 64; i = i + 1)
				if (xu[i])
					k = i;
			int_scaled = $signed(k - F);
			int_scaled = int_scaled <<< F;
			if (k < F) begin
				shift_amt = F - k;
				shifted_x = xu << shift_amt;
			end
			else begin
				shift_amt = k - F;
				shifted_x = xu >> shift_amt;
			end
			normalized_x = shifted_x[F:0];
		end
	end
	always @(posedge clk) begin
		x_pipe[0] <= normalized_x;
		frac_pipe[0] <= 1'sb0;
		int_pipe[0] <= int_scaled;
		special_pipe[0] <= special_d;
	end
	genvar _gv_g_1;
	generate
		for (_gv_g_1 = 1; _gv_g_1 <= F; _gv_g_1 = _gv_g_1 + 1) begin : gen_log_stages
			localparam g = _gv_g_1;
			wire [P - 1:0] produto;
			wire [S - 1:0] deslocado;
			wire cond;
			reg [F - 1:0] frac_next;
			reg [W - 1:0] x_next;
			assign produto = x_pipe[g - 1] * x_pipe[g - 1];
			assign deslocado = produto >> F;
			assign cond = deslocado[F + 1];
			always @(*) begin
				if (_sv2v_0)
					;
				frac_next = frac_pipe[g - 1];
				frac_next[F - g] = cond;
				if (cond)
					x_next = deslocado >> 1;
				else
					x_next = deslocado[F:0];
			end
			always @(posedge clk) begin
				x_pipe[g] <= x_next;
				frac_pipe[g] <= frac_next;
				int_pipe[g] <= int_pipe[g - 1];
				special_pipe[g] <= special_pipe[g - 1];
			end
		end
	endgenerate
	always @(posedge clk)
		if (!rst_n) begin
			valid_pipe <= 1'sb0;
			done_pipe <= 1'sb0;
			begin : sv2v_autoblock_1
				integer j;
				for (j = 0; j <= F; j = j + 1)
					ptr_pipe[j] <= 1'sb0;
			end
		end
		else begin
			valid_pipe[0] <= valid_i;
			done_pipe[0] <= done_i;
			ptr_pipe[0] <= ptr_i;
			begin : sv2v_autoblock_2
				integer j;
				for (j = 1; j <= F; j = j + 1)
					begin
						valid_pipe[j] <= valid_pipe[j - 1];
						done_pipe[j] <= done_pipe[j - 1];
						ptr_pipe[j] <= ptr_pipe[j - 1];
					end
			end
		end
	always @(*) begin
		if (_sv2v_0)
			;
		valid_o = valid_pipe[F];
		ptr_o = ptr_pipe[F];
		done_o = done_pipe[F];
		if (special_pipe[F])
			result = 64'h8000000000000000;
		else
			result = int_pipe[F] | {{64 - F {1'b0}}, frac_pipe[F]};
	end
	initial _sv2v_0 = 0;
endmodule
module long_mul_fixed (
	a,
	b,
	result
);
	reg _sv2v_0;
	parameter WIDTH = 64;
	parameter F = 32;
	input wire signed [WIDTH - 1:0] a;
	input wire signed [WIDTH - 1:0] b;
	output wire signed [WIDTH - 1:0] result;
	localparam signed [31:0] TWO_W = 2 * WIDTH;
	wire signed [TWO_W - 1:0] mult_result;
	reg signed [TWO_W - 1:0] rounded_result;
	assign mult_result = a * b;
	localparam signed [TWO_W - 1:0] ONE = 1;
	always @(*) begin
		if (_sv2v_0)
			;
		if (mult_result >= 0)
			rounded_result = mult_result + (ONE <<< (F - 1));
		else
			rounded_result = mult_result - (ONE <<< (F - 1));
	end
	assign result = rounded_result[(WIDTH + F) - 1:F];
	initial _sv2v_0 = 0;
endmodule
module mel (
	clk,
	rst_n,
	in_valid,
	power_spectrum_frame_ptr,
	power_spectrum_frame_in,
	mel_start_i,
	mel_done_o,
	mel_value_energies,
	mel_prt_energies,
	mel_valid
);
	reg _sv2v_0;
	parameter NUM_MEL_FILTERS = 40;
	parameter FFT_SIZE = 512;
	parameter NFFT_LOG2 = $clog2(FFT_SIZE);
	parameter NUM_RFFT_BINS = (FFT_SIZE / 2) + 1;
	parameter RFFT_BIN_ADDR_WIDTH = $clog2(NUM_RFFT_BINS);
	parameter POWER_WIDTH = 64;
	parameter F = 16;
	parameter MEL_ENERGY_WIDTH = 32;
	parameter FILTER_INDEX_WIDTH = $clog2(NUM_MEL_FILTERS);
	parameter MEL_BANK_SIZE = 32;
	input wire clk;
	input wire rst_n;
	input wire in_valid;
	input wire [NFFT_LOG2 - 1:0] power_spectrum_frame_ptr;
	input wire [POWER_WIDTH - 1:0] power_spectrum_frame_in;
	input wire mel_start_i;
	output reg mel_done_o;
	output reg [MEL_ENERGY_WIDTH - 1:0] mel_value_energies;
	output reg [FILTER_INDEX_WIDTH - 1:0] mel_prt_energies;
	output reg mel_valid;
	reg [FILTER_INDEX_WIDTH - 1:0] mel_prt_energies_internal;
	reg mel_done_internal;
	localparam MEL_MEMORY_DEPTH = MEL_BANK_SIZE * NUM_MEL_FILTERS;
	localparam MEL_MEMORY_ADDR_WIDTH = $clog2(MEL_MEMORY_DEPTH);
	localparam LOG10_CONST = $rtoi(6.02059992 * (1 << F));
	wire signed [POWER_WIDTH - 1:0] log10_const_signal;
	assign log10_const_signal = LOG10_CONST;
	reg [POWER_WIDTH - 1:0] sum;
	reg [POWER_WIDTH - 1:0] sum_next;
	reg [POWER_WIDTH - 1:0] sum_finish;
	reg [FILTER_INDEX_WIDTH - 1:0] i;
	reg [FILTER_INDEX_WIDTH - 1:0] i_next;
	reg [RFFT_BIN_ADDR_WIDTH:0] k;
	reg [RFFT_BIN_ADDR_WIDTH:0] k_next;
	reg [RFFT_BIN_ADDR_WIDTH:0] k_init;
	reg [RFFT_BIN_ADDR_WIDTH:0] k_end;
	reg [MEL_MEMORY_ADDR_WIDTH - 1:0] i_total;
	reg [MEL_MEMORY_ADDR_WIDTH - 1:0] i_total_next;
	reg [MEL_MEMORY_ADDR_WIDTH - 1:0] prt_memory;
	reg read_en;
	reg [POWER_WIDTH - 1:0] power_spectrum;
	reg [POWER_WIDTH - 1:0] power_spectrum_mem [0:NUM_RFFT_BINS];
	reg calc_valid;
	always @(posedge clk) begin : POWER_SPECTRUM_BUFFER_INPUT_LOGIC
		if (in_valid)
			power_spectrum_mem[power_spectrum_frame_ptr] <= power_spectrum_frame_in;
	end
	always @(posedge clk)
		if (read_en)
			power_spectrum <= power_spectrum_mem[k_next];
	wire [POWER_WIDTH - 1:0] temp_mul_next;
	wire [POWER_WIDTH - 1:0] filter;
	mel_table_rom dut_mel_table_rom(
		.addr(prt_memory),
		.dout(filter)
	);
	reg [1:0] state;
	reg [1:0] next_state;
	long_mul_fixed #(.F(F)) u_mul(
		.a(power_spectrum),
		.b(filter),
		.result(temp_mul_next)
	);
	always @(posedge clk)
		if (!rst_n) begin
			state <= 2'd0;
			sum <= 0;
			i <= 0;
			k <= 0;
			i_total <= 0;
			mel_done_internal <= 0;
			sum_finish <= 0;
		end
		else begin
			state <= next_state;
			sum <= sum_next;
			i <= i_next;
			k <= k_next;
			i_total <= i_total_next;
			if (state == 2'd1) begin
				k_init <= filter[RFFT_BIN_ADDR_WIDTH + 16:16];
				k <= filter[RFFT_BIN_ADDR_WIDTH + 16:16];
				k_end <= filter[RFFT_BIN_ADDR_WIDTH:0];
			end
			if (next_state == 2'd3)
				sum_finish <= sum_next;
			if (i == NUM_MEL_FILTERS) begin
				state <= 2'd0;
				mel_done_internal <= 1;
			end
			else
				mel_done_internal <= 0;
		end
	always @(*) begin
		if (_sv2v_0)
			;
		mel_prt_energies_internal = i;
		calc_valid = 1'b0;
		next_state = state;
		sum_next = sum;
		i_next = i;
		k_next = k;
		i_total_next = i_total;
		prt_memory = 0;
		read_en = 1'b0;
		case (state)
			2'd0: begin
				calc_valid = 1'b0;
				sum_next = 0;
				i_next = 0;
				i_total_next = 0;
				if (mel_start_i)
					next_state = 2'd1;
			end
			2'd1: begin
				calc_valid = 1'b0;
				mel_prt_energies_internal = i;
				if (i < NUM_MEL_FILTERS) begin
					prt_memory = i_total;
					next_state = 2'd2;
					k_next = filter[RFFT_BIN_ADDR_WIDTH + 16:16];
					read_en = 1'b1;
				end
				else
					next_state = 2'd0;
			end
			2'd2: begin
				calc_valid = 1'b0;
				mel_prt_energies_internal = i;
				prt_memory = ((i_total + 1) + k) - k_init;
				sum_next = sum + temp_mul_next;
				k_next = k + 1;
				if (k < k_end) begin
					read_en = 1'b1;
					next_state = 2'd2;
				end
				else
					next_state = 2'd3;
			end
			2'd3: begin
				i_next = i + 1;
				i_total_next = i_total + MEL_BANK_SIZE;
				sum_next = 0;
				calc_valid = 1'b1;
				mel_prt_energies_internal = i;
				next_state = 2'd1;
			end
			default: begin
				next_state = 2'd0;
				sum_next = 0;
				i_next = 0;
				i_total_next = 0;
				k_next = 0;
				calc_valid = 1'b0;
				mel_prt_energies_internal = 6'h00;
			end
		endcase
	end
	wire log_mel_valid;
	wire log_mel_done;
	wire [FILTER_INDEX_WIDTH - 1:0] log_mel_prt_energies;
	wire [POWER_WIDTH - 1:0] temp_log2;
	wire [POWER_WIDTH - 1:0] temp_log10;
	log2_fp_pipelined #(.F(F)) u_base2log(
		.clk(clk),
		.rst_n(rst_n),
		.valid_i(calc_valid),
		.x(sum_finish),
		.ptr_i(mel_prt_energies_internal),
		.done_i(mel_done_internal),
		.ptr_o(log_mel_prt_energies),
		.done_o(log_mel_done),
		.result(temp_log2),
		.valid_o(log_mel_valid)
	);
	long_mul_fixed #(.F(F)) u_mul_out(
		.a(temp_log2),
		.b(log10_const_signal),
		.result(temp_log10)
	);
	always @(posedge clk)
		if (!rst_n) begin
			mel_value_energies <= 0;
			mel_valid <= 0;
			mel_done_o <= 0;
			mel_prt_energies <= 0;
		end
		else begin
			mel_done_o <= log_mel_done;
			mel_valid <= log_mel_valid;
			mel_value_energies <= temp_log10[MEL_ENERGY_WIDTH - 1:0];
			mel_prt_energies <= log_mel_prt_energies;
		end
	initial _sv2v_0 = 0;
endmodule
module mel_table_rom (
	addr,
	dout
);
	reg _sv2v_0;
	input wire [8:0] addr;
	output reg [31:0] dout;
	always @(*) begin
		if (_sv2v_0)
			;
		case (addr)
			0: dout = 32'h00010003;
			1: dout = 32'h00000080;
			2: dout = 32'h00000100;
			3: dout = 32'h00000080;
			4: dout = 32'h00000000;
			5: dout = 32'h00000000;
			6: dout = 32'h00000000;
			7: dout = 32'h00000000;
			8: dout = 32'h00000000;
			9: dout = 32'h00000000;
			10: dout = 32'h00000000;
			11: dout = 32'h00000000;
			12: dout = 32'h00000000;
			13: dout = 32'h00000000;
			14: dout = 32'h00000000;
			15: dout = 32'h00000000;
			16: dout = 32'h00000000;
			17: dout = 32'h00000000;
			18: dout = 32'h00000000;
			19: dout = 32'h00000000;
			20: dout = 32'h00000000;
			21: dout = 32'h00000000;
			22: dout = 32'h00000000;
			23: dout = 32'h00000000;
			24: dout = 32'h00000000;
			25: dout = 32'h00030006;
			26: dout = 32'h00000080;
			27: dout = 32'h00000100;
			28: dout = 32'h000000aa;
			29: dout = 32'h00000055;
			30: dout = 32'h00000000;
			31: dout = 32'h00000000;
			32: dout = 32'h00000000;
			33: dout = 32'h00000000;
			34: dout = 32'h00000000;
			35: dout = 32'h00000000;
			36: dout = 32'h00000000;
			37: dout = 32'h00000000;
			38: dout = 32'h00000000;
			39: dout = 32'h00000000;
			40: dout = 32'h00000000;
			41: dout = 32'h00000000;
			42: dout = 32'h00000000;
			43: dout = 32'h00000000;
			44: dout = 32'h00000000;
			45: dout = 32'h00000000;
			46: dout = 32'h00000000;
			47: dout = 32'h00000000;
			48: dout = 32'h00000000;
			49: dout = 32'h00000000;
			50: dout = 32'h00050008;
			51: dout = 32'h00000055;
			52: dout = 32'h000000aa;
			53: dout = 32'h00000100;
			54: dout = 32'h00000080;
			55: dout = 32'h00000000;
			56: dout = 32'h00000000;
			57: dout = 32'h00000000;
			58: dout = 32'h00000000;
			59: dout = 32'h00000000;
			60: dout = 32'h00000000;
			61: dout = 32'h00000000;
			62: dout = 32'h00000000;
			63: dout = 32'h00000000;
			64: dout = 32'h00000000;
			65: dout = 32'h00000000;
			66: dout = 32'h00000000;
			67: dout = 32'h00000000;
			68: dout = 32'h00000000;
			69: dout = 32'h00000000;
			70: dout = 32'h00000000;
			71: dout = 32'h00000000;
			72: dout = 32'h00000000;
			73: dout = 32'h00000000;
			74: dout = 32'h00000000;
			75: dout = 32'h0008000b;
			76: dout = 32'h00000080;
			77: dout = 32'h00000100;
			78: dout = 32'h000000aa;
			79: dout = 32'h00000055;
			80: dout = 32'h00000000;
			81: dout = 32'h00000000;
			82: dout = 32'h00000000;
			83: dout = 32'h00000000;
			84: dout = 32'h00000000;
			85: dout = 32'h00000000;
			86: dout = 32'h00000000;
			87: dout = 32'h00000000;
			88: dout = 32'h00000000;
			89: dout = 32'h00000000;
			90: dout = 32'h00000000;
			91: dout = 32'h00000000;
			92: dout = 32'h00000000;
			93: dout = 32'h00000000;
			94: dout = 32'h00000000;
			95: dout = 32'h00000000;
			96: dout = 32'h00000000;
			97: dout = 32'h00000000;
			98: dout = 32'h00000000;
			99: dout = 32'h00000000;
			100: dout = 32'h000a000f;
			101: dout = 32'h00000055;
			102: dout = 32'h000000aa;
			103: dout = 32'h00000100;
			104: dout = 32'h000000c0;
			105: dout = 32'h00000080;
			106: dout = 32'h00000040;
			107: dout = 32'h00000000;
			108: dout = 32'h00000000;
			109: dout = 32'h00000000;
			110: dout = 32'h00000000;
			111: dout = 32'h00000000;
			112: dout = 32'h00000000;
			113: dout = 32'h00000000;
			114: dout = 32'h00000000;
			115: dout = 32'h00000000;
			116: dout = 32'h00000000;
			117: dout = 32'h00000000;
			118: dout = 32'h00000000;
			119: dout = 32'h00000000;
			120: dout = 32'h00000000;
			121: dout = 32'h00000000;
			122: dout = 32'h00000000;
			123: dout = 32'h00000000;
			124: dout = 32'h00000000;
			125: dout = 32'h000d0012;
			126: dout = 32'h00000040;
			127: dout = 32'h00000080;
			128: dout = 32'h000000c0;
			129: dout = 32'h00000100;
			130: dout = 32'h000000aa;
			131: dout = 32'h00000055;
			132: dout = 32'h00000000;
			133: dout = 32'h00000000;
			134: dout = 32'h00000000;
			135: dout = 32'h00000000;
			136: dout = 32'h00000000;
			137: dout = 32'h00000000;
			138: dout = 32'h00000000;
			139: dout = 32'h00000000;
			140: dout = 32'h00000000;
			141: dout = 32'h00000000;
			142: dout = 32'h00000000;
			143: dout = 32'h00000000;
			144: dout = 32'h00000000;
			145: dout = 32'h00000000;
			146: dout = 32'h00000000;
			147: dout = 32'h00000000;
			148: dout = 32'h00000000;
			149: dout = 32'h00000000;
			150: dout = 32'h00110016;
			151: dout = 32'h00000055;
			152: dout = 32'h000000aa;
			153: dout = 32'h00000100;
			154: dout = 32'h000000c0;
			155: dout = 32'h00000080;
			156: dout = 32'h00000040;
			157: dout = 32'h00000000;
			158: dout = 32'h00000000;
			159: dout = 32'h00000000;
			160: dout = 32'h00000000;
			161: dout = 32'h00000000;
			162: dout = 32'h00000000;
			163: dout = 32'h00000000;
			164: dout = 32'h00000000;
			165: dout = 32'h00000000;
			166: dout = 32'h00000000;
			167: dout = 32'h00000000;
			168: dout = 32'h00000000;
			169: dout = 32'h00000000;
			170: dout = 32'h00000000;
			171: dout = 32'h00000000;
			172: dout = 32'h00000000;
			173: dout = 32'h00000000;
			174: dout = 32'h00000000;
			175: dout = 32'h0014001b;
			176: dout = 32'h00000040;
			177: dout = 32'h00000080;
			178: dout = 32'h000000c0;
			179: dout = 32'h00000100;
			180: dout = 32'h000000cc;
			181: dout = 32'h00000099;
			182: dout = 32'h00000066;
			183: dout = 32'h00000033;
			184: dout = 32'h00000000;
			185: dout = 32'h00000000;
			186: dout = 32'h00000000;
			187: dout = 32'h00000000;
			188: dout = 32'h00000000;
			189: dout = 32'h00000000;
			190: dout = 32'h00000000;
			191: dout = 32'h00000000;
			192: dout = 32'h00000000;
			193: dout = 32'h00000000;
			194: dout = 32'h00000000;
			195: dout = 32'h00000000;
			196: dout = 32'h00000000;
			197: dout = 32'h00000000;
			198: dout = 32'h00000000;
			199: dout = 32'h00000000;
			200: dout = 32'h00180020;
			201: dout = 32'h00000033;
			202: dout = 32'h00000066;
			203: dout = 32'h00000099;
			204: dout = 32'h000000cc;
			205: dout = 32'h00000100;
			206: dout = 32'h000000cc;
			207: dout = 32'h00000099;
			208: dout = 32'h00000066;
			209: dout = 32'h00000033;
			210: dout = 32'h00000000;
			211: dout = 32'h00000000;
			212: dout = 32'h00000000;
			213: dout = 32'h00000000;
			214: dout = 32'h00000000;
			215: dout = 32'h00000000;
			216: dout = 32'h00000000;
			217: dout = 32'h00000000;
			218: dout = 32'h00000000;
			219: dout = 32'h00000000;
			220: dout = 32'h00000000;
			221: dout = 32'h00000000;
			222: dout = 32'h00000000;
			223: dout = 32'h00000000;
			224: dout = 32'h00000000;
			225: dout = 32'h001d0025;
			226: dout = 32'h00000033;
			227: dout = 32'h00000066;
			228: dout = 32'h00000099;
			229: dout = 32'h000000cc;
			230: dout = 32'h00000100;
			231: dout = 32'h000000cc;
			232: dout = 32'h00000099;
			233: dout = 32'h00000066;
			234: dout = 32'h00000033;
			235: dout = 32'h00000000;
			236: dout = 32'h00000000;
			237: dout = 32'h00000000;
			238: dout = 32'h00000000;
			239: dout = 32'h00000000;
			240: dout = 32'h00000000;
			241: dout = 32'h00000000;
			242: dout = 32'h00000000;
			243: dout = 32'h00000000;
			244: dout = 32'h00000000;
			245: dout = 32'h00000000;
			246: dout = 32'h00000000;
			247: dout = 32'h00000000;
			248: dout = 32'h00000000;
			249: dout = 32'h00000000;
			250: dout = 32'h0022002b;
			251: dout = 32'h00000033;
			252: dout = 32'h00000066;
			253: dout = 32'h00000099;
			254: dout = 32'h000000cc;
			255: dout = 32'h00000100;
			256: dout = 32'h000000d5;
			257: dout = 32'h000000aa;
			258: dout = 32'h00000080;
			259: dout = 32'h00000055;
			260: dout = 32'h0000002a;
			261: dout = 32'h00000000;
			262: dout = 32'h00000000;
			263: dout = 32'h00000000;
			264: dout = 32'h00000000;
			265: dout = 32'h00000000;
			266: dout = 32'h00000000;
			267: dout = 32'h00000000;
			268: dout = 32'h00000000;
			269: dout = 32'h00000000;
			270: dout = 32'h00000000;
			271: dout = 32'h00000000;
			272: dout = 32'h00000000;
			273: dout = 32'h00000000;
			274: dout = 32'h00000000;
			275: dout = 32'h00270031;
			276: dout = 32'h0000002a;
			277: dout = 32'h00000055;
			278: dout = 32'h00000080;
			279: dout = 32'h000000aa;
			280: dout = 32'h000000d5;
			281: dout = 32'h00000100;
			282: dout = 32'h000000d5;
			283: dout = 32'h000000aa;
			284: dout = 32'h00000080;
			285: dout = 32'h00000055;
			286: dout = 32'h0000002a;
			287: dout = 32'h00000000;
			288: dout = 32'h00000000;
			289: dout = 32'h00000000;
			290: dout = 32'h00000000;
			291: dout = 32'h00000000;
			292: dout = 32'h00000000;
			293: dout = 32'h00000000;
			294: dout = 32'h00000000;
			295: dout = 32'h00000000;
			296: dout = 32'h00000000;
			297: dout = 32'h00000000;
			298: dout = 32'h00000000;
			299: dout = 32'h00000000;
			300: dout = 32'h002d0038;
			301: dout = 32'h0000002a;
			302: dout = 32'h00000055;
			303: dout = 32'h00000080;
			304: dout = 32'h000000aa;
			305: dout = 32'h000000d5;
			306: dout = 32'h00000100;
			307: dout = 32'h000000db;
			308: dout = 32'h000000b6;
			309: dout = 32'h00000092;
			310: dout = 32'h0000006d;
			311: dout = 32'h00000049;
			312: dout = 32'h00000024;
			313: dout = 32'h00000000;
			314: dout = 32'h00000000;
			315: dout = 32'h00000000;
			316: dout = 32'h00000000;
			317: dout = 32'h00000000;
			318: dout = 32'h00000000;
			319: dout = 32'h00000000;
			320: dout = 32'h00000000;
			321: dout = 32'h00000000;
			322: dout = 32'h00000000;
			323: dout = 32'h00000000;
			324: dout = 32'h00000000;
			325: dout = 32'h00330040;
			326: dout = 32'h00000024;
			327: dout = 32'h00000049;
			328: dout = 32'h0000006d;
			329: dout = 32'h00000092;
			330: dout = 32'h000000b6;
			331: dout = 32'h000000db;
			332: dout = 32'h00000100;
			333: dout = 32'h000000e0;
			334: dout = 32'h000000c0;
			335: dout = 32'h000000a0;
			336: dout = 32'h00000080;
			337: dout = 32'h00000060;
			338: dout = 32'h00000040;
			339: dout = 32'h00000020;
			340: dout = 32'h00000000;
			341: dout = 32'h00000000;
			342: dout = 32'h00000000;
			343: dout = 32'h00000000;
			344: dout = 32'h00000000;
			345: dout = 32'h00000000;
			346: dout = 32'h00000000;
			347: dout = 32'h00000000;
			348: dout = 32'h00000000;
			349: dout = 32'h00000000;
			350: dout = 32'h003a0048;
			351: dout = 32'h00000020;
			352: dout = 32'h00000040;
			353: dout = 32'h00000060;
			354: dout = 32'h00000080;
			355: dout = 32'h000000a0;
			356: dout = 32'h000000c0;
			357: dout = 32'h000000e0;
			358: dout = 32'h00000100;
			359: dout = 32'h000000e0;
			360: dout = 32'h000000c0;
			361: dout = 32'h000000a0;
			362: dout = 32'h00000080;
			363: dout = 32'h00000060;
			364: dout = 32'h00000040;
			365: dout = 32'h00000020;
			366: dout = 32'h00000000;
			367: dout = 32'h00000000;
			368: dout = 32'h00000000;
			369: dout = 32'h00000000;
			370: dout = 32'h00000000;
			371: dout = 32'h00000000;
			372: dout = 32'h00000000;
			373: dout = 32'h00000000;
			374: dout = 32'h00000000;
			375: dout = 32'h00420051;
			376: dout = 32'h00000020;
			377: dout = 32'h00000040;
			378: dout = 32'h00000060;
			379: dout = 32'h00000080;
			380: dout = 32'h000000a0;
			381: dout = 32'h000000c0;
			382: dout = 32'h000000e0;
			383: dout = 32'h00000100;
			384: dout = 32'h000000e3;
			385: dout = 32'h000000c7;
			386: dout = 32'h000000aa;
			387: dout = 32'h0000008e;
			388: dout = 32'h00000071;
			389: dout = 32'h00000055;
			390: dout = 32'h00000038;
			391: dout = 32'h0000001c;
			392: dout = 32'h00000000;
			393: dout = 32'h00000000;
			394: dout = 32'h00000000;
			395: dout = 32'h00000000;
			396: dout = 32'h00000000;
			397: dout = 32'h00000000;
			398: dout = 32'h00000000;
			399: dout = 32'h00000000;
			400: dout = 32'h004a005b;
			401: dout = 32'h0000001c;
			402: dout = 32'h00000038;
			403: dout = 32'h00000055;
			404: dout = 32'h00000071;
			405: dout = 32'h0000008e;
			406: dout = 32'h000000aa;
			407: dout = 32'h000000c7;
			408: dout = 32'h000000e3;
			409: dout = 32'h00000100;
			410: dout = 32'h000000e6;
			411: dout = 32'h000000cc;
			412: dout = 32'h000000b3;
			413: dout = 32'h00000099;
			414: dout = 32'h00000080;
			415: dout = 32'h00000066;
			416: dout = 32'h0000004c;
			417: dout = 32'h00000033;
			418: dout = 32'h00000019;
			419: dout = 32'h00000000;
			420: dout = 32'h00000000;
			421: dout = 32'h00000000;
			422: dout = 32'h00000000;
			423: dout = 32'h00000000;
			424: dout = 32'h00000000;
			425: dout = 32'h00530066;
			426: dout = 32'h00000019;
			427: dout = 32'h00000033;
			428: dout = 32'h0000004c;
			429: dout = 32'h00000066;
			430: dout = 32'h00000080;
			431: dout = 32'h00000099;
			432: dout = 32'h000000b3;
			433: dout = 32'h000000cc;
			434: dout = 32'h000000e6;
			435: dout = 32'h00000100;
			436: dout = 32'h000000e8;
			437: dout = 32'h000000d1;
			438: dout = 32'h000000ba;
			439: dout = 32'h000000a2;
			440: dout = 32'h0000008b;
			441: dout = 32'h00000074;
			442: dout = 32'h0000005d;
			443: dout = 32'h00000045;
			444: dout = 32'h0000002e;
			445: dout = 32'h00000017;
			446: dout = 32'h00000000;
			447: dout = 32'h00000000;
			448: dout = 32'h00000000;
			449: dout = 32'h00000000;
			450: dout = 32'h005d0072;
			451: dout = 32'h00000017;
			452: dout = 32'h0000002e;
			453: dout = 32'h00000045;
			454: dout = 32'h0000005d;
			455: dout = 32'h00000074;
			456: dout = 32'h0000008b;
			457: dout = 32'h000000a2;
			458: dout = 32'h000000ba;
			459: dout = 32'h000000d1;
			460: dout = 32'h000000e8;
			461: dout = 32'h00000100;
			462: dout = 32'h000000ea;
			463: dout = 32'h000000d5;
			464: dout = 32'h000000c0;
			465: dout = 32'h000000aa;
			466: dout = 32'h00000095;
			467: dout = 32'h00000080;
			468: dout = 32'h0000006a;
			469: dout = 32'h00000055;
			470: dout = 32'h00000040;
			471: dout = 32'h0000002a;
			472: dout = 32'h00000015;
			473: dout = 32'h00000000;
			474: dout = 32'h00000000;
			475: dout = 32'h0068007f;
			476: dout = 32'h00000015;
			477: dout = 32'h0000002a;
			478: dout = 32'h00000040;
			479: dout = 32'h00000055;
			480: dout = 32'h0000006a;
			481: dout = 32'h00000080;
			482: dout = 32'h00000095;
			483: dout = 32'h000000aa;
			484: dout = 32'h000000c0;
			485: dout = 32'h000000d5;
			486: dout = 32'h000000ea;
			487: dout = 32'h00000100;
			488: dout = 32'h000000ec;
			489: dout = 32'h000000d8;
			490: dout = 32'h000000c4;
			491: dout = 32'h000000b1;
			492: dout = 32'h0000009d;
			493: dout = 32'h00000089;
			494: dout = 32'h00000076;
			495: dout = 32'h00000062;
			496: dout = 32'h0000004e;
			497: dout = 32'h0000003b;
			498: dout = 32'h00000027;
			499: dout = 32'h00000013;
			default: dout = 1'sb0;
		endcase
	end
	initial _sv2v_0 = 0;
endmodule
module MFCC_Core (
	clock,
	rst_n,
	pcm_in,
	pcm_ready_i,
	start_i,
	auto_restart_i,
	mfcc_done_o,
	mfcc_data_o
);
	parameter WIDTH_MIC = 16;
	parameter WIDTH = 64;
	parameter WIDTH_OUT = 32;
	parameter F_WIDTH = 8;
	parameter ALPHA = 248;
	parameter NUM_CEPS = 7;
	parameter NUM_MEL_FILTERS = 20;
	parameter FRAME_SIZE = 256;
	parameter FRAME_STEP = 128;
	parameter FFT_SIZE = 256;
	parameter NFFT_LOG2 = 8;
	parameter PCM_FIFO_DEPTH = 32;
	parameter MEL_BANK_SIZE = 25;
	input wire clock;
	input wire rst_n;
	input wire [WIDTH_MIC - 1:0] pcm_in;
	input wire pcm_ready_i;
	input wire start_i;
	input wire auto_restart_i;
	output wire mfcc_done_o;
	output wire [(NUM_CEPS * WIDTH_OUT) - 1:0] mfcc_data_o;
	localparam RFFT_SIZE = FFT_SIZE / 2;
	wire clk;
	assign clk = clock;
	wire pre_emphasis_valid;
	wire [WIDTH - 1:0] pre_emphasized_signal;
	wire fifo_empty;
	wire fifo_rd_en;
	wire fifo_full;
	wire [WIDTH - 1:0] fifo_read_data;
	pre_emphasis #(
		.WIDTH_IN(WIDTH_MIC),
		.WIDTH_OUT(WIDTH),
		.F(F_WIDTH),
		.ALPHA(ALPHA)
	) u_pre_emphasis(
		.clk(clk),
		.rst_n(rst_n),
		.in_valid(pcm_ready_i),
		.out_valid(pre_emphasis_valid),
		.x_in(pcm_in),
		.y_out(pre_emphasized_signal)
	);
	fifo #(
		.DEPTH(PCM_FIFO_DEPTH),
		.WIDTH(WIDTH)
	) tx_fifo(
		.clk(clk),
		.rst_n(rst_n),
		.wr_en_i(pre_emphasis_valid),
		.rd_en_i(fifo_rd_en),
		.write_data_i(pre_emphasized_signal),
		.full_o(fifo_full),
		.empty_o(fifo_empty),
		.read_data_o(fifo_read_data)
	);
	wire [WIDTH - 1:0] window_buffer_data_o;
	wire window_valid_to_read;
	wire start_move;
	wire start_hamming;
	wire idle_window;
	window_buffer #(
		.WIDTH(WIDTH),
		.FRAME_SIZE(FRAME_SIZE),
		.FRAME_STEP(FRAME_STEP)
	) u_window_buffer(
		.clk(clk),
		.rst_n(rst_n),
		.start_move(start_move),
		.fifo_rd_en_o(fifo_rd_en),
		.fifo_data_i(fifo_read_data),
		.fifo_empty_i(fifo_empty),
		.read_data_o(window_buffer_data_o),
		.valid_to_read_o(window_valid_to_read),
		.start_next_state_o(start_hamming),
		.idle_o(idle_window)
	);
	wire hamming_done;
	wire hamming_out_valid;
	wire [NFFT_LOG2 - 1:0] frame_ptr;
	wire signed [WIDTH - 1:0] hamming_sample;
	hamming_window #(
		.N(WIDTH),
		.F(F_WIDTH),
		.NUM_COEFFICIENTS(FRAME_SIZE),
		.NFFT_SIZE(FFT_SIZE)
	) u_hamming_window(
		.clk(clk),
		.rst_n(rst_n),
		.start_i(start_hamming),
		.valid_to_read_i(window_valid_to_read),
		.frame_ptr_o(frame_ptr),
		.frame_sample_i(window_buffer_data_o),
		.hamming_sample_o(hamming_sample),
		.out_valid_o(hamming_out_valid),
		.done_o(hamming_done)
	);
	wire [NFFT_LOG2 - 1:0] fft_ptr;
	wire [WIDTH - 1:0] fft_power_sample;
	wire fft_power_valid;
	wire fft_done;
	fft_radix2 #(
		.NFFT(FFT_SIZE),
		.WIDTH(WIDTH),
		.F(F_WIDTH),
		.NFFT_LOG2(NFFT_LOG2)
	) u_fft(
		.clk(clk),
		.rst_n(rst_n),
		.in_valid(hamming_out_valid),
		.frame_ptr_i(frame_ptr),
		.frame_sample_i(hamming_sample),
		.start_i(hamming_done),
		.power_ptr_o(fft_ptr),
		.power_valid_o(fft_power_valid),
		.power_sample_o(fft_power_sample),
		.fft_done_o(fft_done)
	);
	wire mel_done;
	wire mel_valid;
	localparam FILTER_INDEX_WIDTH = $clog2(NUM_MEL_FILTERS);
	wire [FILTER_INDEX_WIDTH - 1:0] mel_ptr;
	wire [WIDTH_OUT - 1:0] mel_sample;
	mel #(
		.NUM_MEL_FILTERS(NUM_MEL_FILTERS),
		.FFT_SIZE(FFT_SIZE),
		.NUM_RFFT_BINS(RFFT_SIZE),
		.F(F_WIDTH),
		.MEL_BANK_SIZE(MEL_BANK_SIZE)
	) u_mel(
		.clk(clk),
		.rst_n(rst_n),
		.mel_start_i(fft_done),
		.in_valid(fft_power_valid),
		.power_spectrum_frame_ptr(fft_ptr),
		.power_spectrum_frame_in(fft_power_sample),
		.mel_done_o(mel_done),
		.mel_value_energies(mel_sample),
		.mel_prt_energies(mel_ptr),
		.mel_valid(mel_valid)
	);
	wire [$clog2(NUM_CEPS) - 1:0] ceps_ptr;
	wire [WIDTH_OUT - 1:0] ceps_sample;
	wire dct_valid;
	wire dct_done;
	reg [(NUM_CEPS * WIDTH_OUT) - 1:0] coeficientes;
	dct #(
		.NUM_CEPS(NUM_CEPS),
		.NUM_MEL_FILTERS(NUM_MEL_FILTERS),
		.ENERGIES_WIDTH(WIDTH_OUT),
		.CEPS_WIDTH(WIDTH_OUT),
		.F(F_WIDTH)
	) u_dct(
		.clk(clk),
		.rst_n(rst_n),
		.in_valid(mel_valid),
		.frame_ptr_i(mel_ptr),
		.energy_in(mel_sample),
		.start_i(mel_done),
		.dct_done_o(dct_done),
		.dct_valid_o(dct_valid),
		.ceps_out(ceps_sample),
		.ceps_ptr_o(ceps_ptr)
	);
	always @(posedge clk)
		if (dct_valid)
			coeficientes[((NUM_CEPS - 1) - ceps_ptr) * WIDTH_OUT+:WIDTH_OUT] <= ceps_sample;
	reg finished;
	reg start_move_auto;
	always @(posedge clk) begin : RESTARTIG_LOGIC
		if (!rst_n) begin
			start_move_auto <= 0;
			finished <= 0;
		end
		else begin
			if (fft_done)
				finished <= 1;
			start_move_auto <= finished && idle_window;
			if (finished && idle_window)
				finished <= 0;
		end
	end
	assign start_move = start_i || (auto_restart_i && start_move_auto);
	assign mfcc_done_o = dct_done;
	assign mfcc_data_o = coeficientes;
endmodule
module pre_emphasis (
	clk,
	rst_n,
	in_valid,
	out_valid,
	x_in,
	y_out
);
	parameter WIDTH_IN = 16;
	parameter WIDTH_OUT = 64;
	parameter F = 16;
	parameter ALPHA = $rtoi(0.97 * (1 << F));
	input wire clk;
	input wire rst_n;
	input wire in_valid;
	output reg out_valid;
	input wire signed [WIDTH_IN - 1:0] x_in;
	output reg signed [WIDTH_OUT - 1:0] y_out;
	localparam WIDTH_DIFF = WIDTH_OUT - WIDTH_IN;
	reg signed [WIDTH_OUT - 1:0] x_prev;
	wire signed [WIDTH_OUT - 1:0] x_in_extend;
	assign x_in_extend = {{WIDTH_DIFF {x_in[WIDTH_IN - 1]}}, x_in} << F;
	always @(posedge clk)
		if (!rst_n) begin
			x_prev <= 'd0;
			y_out <= 'd0;
		end
		else if (in_valid) begin
			x_prev <= {{WIDTH_DIFF {x_in[WIDTH_IN - 1]}}, x_in} * ALPHA;
			y_out <= x_in_extend - x_prev;
			out_valid <= 1;
		end
		else
			out_valid <= 0;
endmodule
module sram_1r1w (
	clk,
	we,
	waddr,
	wdata,
	re,
	raddr,
	rdata
);
	parameter DEPTH = 512;
	parameter WIDTH = 128;
	parameter ADDR_W = 9;
	input wire clk;
	input wire we;
	input wire [ADDR_W - 1:0] waddr;
	input wire [WIDTH - 1:0] wdata;
	input wire re;
	input wire [ADDR_W - 1:0] raddr;
	output reg [WIDTH - 1:0] rdata;
	reg [WIDTH - 1:0] mem [0:DEPTH - 1];
	always @(posedge clk)
		if (we)
			mem[waddr] <= wdata;
	always @(posedge clk)
		if (re)
			rdata <= mem[raddr];
endmodule
module twiddles_rom (
	addr,
	dout
);
	reg _sv2v_0;
	input wire [6:0] addr;
	output reg [127:0] dout;
	always @(*) begin
		if (_sv2v_0)
			;
		case (addr)
			0: dout = 128'h00000000000001000000000000000000;
			1: dout = 128'h00000000000000fffffffffffffffffa;
			2: dout = 128'h00000000000000fffffffffffffffff4;
			3: dout = 128'h00000000000000ffffffffffffffffee;
			4: dout = 128'h00000000000000feffffffffffffffe7;
			5: dout = 128'h00000000000000feffffffffffffffe1;
			6: dout = 128'h00000000000000fdffffffffffffffdb;
			7: dout = 128'h00000000000000fcffffffffffffffd5;
			8: dout = 128'h00000000000000fbffffffffffffffcf;
			9: dout = 128'h00000000000000f9ffffffffffffffc8;
			10: dout = 128'h00000000000000f8ffffffffffffffc2;
			11: dout = 128'h00000000000000f6ffffffffffffffbc;
			12: dout = 128'h00000000000000f4ffffffffffffffb6;
			13: dout = 128'h00000000000000f3ffffffffffffffb0;
			14: dout = 128'h00000000000000f1ffffffffffffffaa;
			15: dout = 128'h00000000000000eeffffffffffffffa4;
			16: dout = 128'h00000000000000ecffffffffffffff9f;
			17: dout = 128'h00000000000000eaffffffffffffff99;
			18: dout = 128'h00000000000000e7ffffffffffffff93;
			19: dout = 128'h00000000000000e4ffffffffffffff8d;
			20: dout = 128'h00000000000000e1ffffffffffffff88;
			21: dout = 128'h00000000000000deffffffffffffff82;
			22: dout = 128'h00000000000000dbffffffffffffff7d;
			23: dout = 128'h00000000000000d8ffffffffffffff78;
			24: dout = 128'h00000000000000d4ffffffffffffff72;
			25: dout = 128'h00000000000000d1ffffffffffffff6d;
			26: dout = 128'h00000000000000cdffffffffffffff68;
			27: dout = 128'h00000000000000c9ffffffffffffff63;
			28: dout = 128'h00000000000000c5ffffffffffffff5e;
			29: dout = 128'h00000000000000c1ffffffffffffff59;
			30: dout = 128'h00000000000000bdffffffffffffff55;
			31: dout = 128'h00000000000000b9ffffffffffffff50;
			32: dout = 128'h00000000000000b5ffffffffffffff4b;
			33: dout = 128'h00000000000000b0ffffffffffffff47;
			34: dout = 128'h00000000000000abffffffffffffff43;
			35: dout = 128'h00000000000000a7ffffffffffffff3f;
			36: dout = 128'h00000000000000a2ffffffffffffff3b;
			37: dout = 128'h000000000000009dffffffffffffff37;
			38: dout = 128'h0000000000000098ffffffffffffff33;
			39: dout = 128'h0000000000000093ffffffffffffff2f;
			40: dout = 128'h000000000000008effffffffffffff2c;
			41: dout = 128'h0000000000000088ffffffffffffff28;
			42: dout = 128'h0000000000000083ffffffffffffff25;
			43: dout = 128'h000000000000007effffffffffffff22;
			44: dout = 128'h0000000000000078ffffffffffffff1f;
			45: dout = 128'h0000000000000073ffffffffffffff1c;
			46: dout = 128'h000000000000006dffffffffffffff19;
			47: dout = 128'h0000000000000067ffffffffffffff16;
			48: dout = 128'h0000000000000061ffffffffffffff14;
			49: dout = 128'h000000000000005cffffffffffffff12;
			50: dout = 128'h0000000000000056ffffffffffffff0f;
			51: dout = 128'h0000000000000050ffffffffffffff0d;
			52: dout = 128'h000000000000004affffffffffffff0c;
			53: dout = 128'h0000000000000044ffffffffffffff0a;
			54: dout = 128'h000000000000003effffffffffffff08;
			55: dout = 128'h0000000000000038ffffffffffffff07;
			56: dout = 128'h0000000000000031ffffffffffffff05;
			57: dout = 128'h000000000000002bffffffffffffff04;
			58: dout = 128'h0000000000000025ffffffffffffff03;
			59: dout = 128'h000000000000001fffffffffffffff02;
			60: dout = 128'h0000000000000019ffffffffffffff02;
			61: dout = 128'h0000000000000012ffffffffffffff01;
			62: dout = 128'h000000000000000cffffffffffffff01;
			63: dout = 128'h0000000000000006ffffffffffffff01;
			64: dout = 128'h0000000000000000ffffffffffffff00;
			65: dout = 128'hfffffffffffffffaffffffffffffff01;
			66: dout = 128'hfffffffffffffff4ffffffffffffff01;
			67: dout = 128'hffffffffffffffeeffffffffffffff01;
			68: dout = 128'hffffffffffffffe7ffffffffffffff02;
			69: dout = 128'hffffffffffffffe1ffffffffffffff02;
			70: dout = 128'hffffffffffffffdbffffffffffffff03;
			71: dout = 128'hffffffffffffffd5ffffffffffffff04;
			72: dout = 128'hffffffffffffffcfffffffffffffff05;
			73: dout = 128'hffffffffffffffc8ffffffffffffff07;
			74: dout = 128'hffffffffffffffc2ffffffffffffff08;
			75: dout = 128'hffffffffffffffbcffffffffffffff0a;
			76: dout = 128'hffffffffffffffb6ffffffffffffff0c;
			77: dout = 128'hffffffffffffffb0ffffffffffffff0d;
			78: dout = 128'hffffffffffffffaaffffffffffffff0f;
			79: dout = 128'hffffffffffffffa4ffffffffffffff12;
			80: dout = 128'hffffffffffffff9fffffffffffffff14;
			81: dout = 128'hffffffffffffff99ffffffffffffff16;
			82: dout = 128'hffffffffffffff93ffffffffffffff19;
			83: dout = 128'hffffffffffffff8dffffffffffffff1c;
			84: dout = 128'hffffffffffffff88ffffffffffffff1f;
			85: dout = 128'hffffffffffffff82ffffffffffffff22;
			86: dout = 128'hffffffffffffff7dffffffffffffff25;
			87: dout = 128'hffffffffffffff78ffffffffffffff28;
			88: dout = 128'hffffffffffffff72ffffffffffffff2c;
			89: dout = 128'hffffffffffffff6dffffffffffffff2f;
			90: dout = 128'hffffffffffffff68ffffffffffffff33;
			91: dout = 128'hffffffffffffff63ffffffffffffff37;
			92: dout = 128'hffffffffffffff5effffffffffffff3b;
			93: dout = 128'hffffffffffffff59ffffffffffffff3f;
			94: dout = 128'hffffffffffffff55ffffffffffffff43;
			95: dout = 128'hffffffffffffff50ffffffffffffff47;
			96: dout = 128'hffffffffffffff4bffffffffffffff4b;
			97: dout = 128'hffffffffffffff47ffffffffffffff50;
			98: dout = 128'hffffffffffffff43ffffffffffffff55;
			99: dout = 128'hffffffffffffff3fffffffffffffff59;
			100: dout = 128'hffffffffffffff3bffffffffffffff5e;
			101: dout = 128'hffffffffffffff37ffffffffffffff63;
			102: dout = 128'hffffffffffffff33ffffffffffffff68;
			103: dout = 128'hffffffffffffff2fffffffffffffff6d;
			104: dout = 128'hffffffffffffff2cffffffffffffff72;
			105: dout = 128'hffffffffffffff28ffffffffffffff78;
			106: dout = 128'hffffffffffffff25ffffffffffffff7d;
			107: dout = 128'hffffffffffffff22ffffffffffffff82;
			108: dout = 128'hffffffffffffff1fffffffffffffff88;
			109: dout = 128'hffffffffffffff1cffffffffffffff8d;
			110: dout = 128'hffffffffffffff19ffffffffffffff93;
			111: dout = 128'hffffffffffffff16ffffffffffffff99;
			112: dout = 128'hffffffffffffff14ffffffffffffff9f;
			113: dout = 128'hffffffffffffff12ffffffffffffffa4;
			114: dout = 128'hffffffffffffff0fffffffffffffffaa;
			115: dout = 128'hffffffffffffff0dffffffffffffffb0;
			116: dout = 128'hffffffffffffff0cffffffffffffffb6;
			117: dout = 128'hffffffffffffff0affffffffffffffbc;
			118: dout = 128'hffffffffffffff08ffffffffffffffc2;
			119: dout = 128'hffffffffffffff07ffffffffffffffc8;
			120: dout = 128'hffffffffffffff05ffffffffffffffcf;
			121: dout = 128'hffffffffffffff04ffffffffffffffd5;
			122: dout = 128'hffffffffffffff03ffffffffffffffdb;
			123: dout = 128'hffffffffffffff02ffffffffffffffe1;
			124: dout = 128'hffffffffffffff02ffffffffffffffe7;
			125: dout = 128'hffffffffffffff01ffffffffffffffee;
			126: dout = 128'hffffffffffffff01fffffffffffffff4;
			127: dout = 128'hffffffffffffff01fffffffffffffffa;
			default: dout = 1'sb0;
		endcase
	end
	initial _sv2v_0 = 0;
endmodule
module window_buffer (
	clk,
	rst_n,
	start_move,
	fifo_rd_en_o,
	fifo_data_i,
	fifo_empty_i,
	read_data_o,
	valid_to_read_o,
	done_o,
	start_next_state_o,
	idle_o
);
	reg _sv2v_0;
	parameter WIDTH = 64;
	parameter FRAME_SIZE = 400;
	parameter FRAME_STEP = 160;
	input wire clk;
	input wire rst_n;
	input wire start_move;
	output reg fifo_rd_en_o;
	input wire [WIDTH - 1:0] fifo_data_i;
	input wire fifo_empty_i;
	output wire [WIDTH - 1:0] read_data_o;
	output reg valid_to_read_o;
	output reg done_o;
	output reg start_next_state_o;
	output reg idle_o;
	localparam signed [31:0] PTR_WIDTH = $clog2(FRAME_SIZE);
	reg [PTR_WIDTH - 1:0] wr_ptr;
	reg [PTR_WIDTH - 1:0] win_rd_idx;
	reg [PTR_WIDTH - 1:0] win_base_ptr;
	reg [PTR_WIDTH - 1:0] rd_phys_addr;
	reg [PTR_WIDTH:0] fill_need;
	reg first_fill;
	reg [2:0] current_state;
	reg [2:0] next_state;
	wire [PTR_WIDTH:0] addr_sum;
	wire [PTR_WIDTH:0] base_sum;
	assign addr_sum = win_base_ptr + win_rd_idx;
	assign base_sum = win_base_ptr + FRAME_STEP;
	reg valid_to_read;
	reg [WIDTH - 1:0] buffer_rdata;
	wire [PTR_WIDTH - 1:0] mem_waddr;
	wire [PTR_WIDTH - 1:0] mem_raddr;
	reg mem_we;
	wire mem_re;
	assign mem_waddr = wr_ptr;
	assign mem_raddr = rd_phys_addr;
	always @(posedge clk) mem_we <= fifo_rd_en_o && ~fifo_empty_i;
	assign mem_re = valid_to_read;
	reg [WIDTH - 1:0] mem [0:FRAME_SIZE - 1];
	always @(posedge clk)
		if (mem_we)
			mem[mem_waddr] <= fifo_data_i;
	always @(posedge clk)
		if (mem_re)
			buffer_rdata <= mem[mem_raddr];
	always @(posedge clk)
		if (!rst_n)
			current_state <= 3'd1;
		else
			current_state <= next_state;
	always @(*) begin
		if (_sv2v_0)
			;
		next_state = current_state;
		idle_o = 0;
		done_o = 0;
		(* full_case, parallel_case *)
		case (current_state)
			3'd0: begin
				idle_o = 1;
				if (start_move)
					next_state = 3'd2;
			end
			3'd1: next_state = 3'd3;
			3'd2: next_state = 3'd4;
			3'd3:
				if (!fifo_empty_i)
					next_state = 3'd4;
				else
					next_state = 3'd3;
			3'd4:
				if (win_rd_idx == (FRAME_SIZE - 1)) begin
					next_state = 3'd0;
					done_o = 1;
				end
				else if (fifo_empty_i && (fill_need != 0))
					next_state = 3'd3;
				else
					next_state = 3'd4;
			default: next_state = current_state;
		endcase
	end
	always @(posedge clk) begin
		start_next_state_o <= 0;
		fifo_rd_en_o <= 0;
		valid_to_read <= 0;
		if (!rst_n) begin
			win_base_ptr <= 0;
			wr_ptr <= 0;
			win_rd_idx <= 0;
			rd_phys_addr <= 1'sb0;
			valid_to_read <= 1'sb0;
			fill_need <= FRAME_SIZE;
			first_fill <= 1'b1;
		end
		else begin
			rd_phys_addr <= (addr_sum >= FRAME_SIZE ? addr_sum - FRAME_SIZE : addr_sum[PTR_WIDTH - 1:0]);
			valid_to_read <= 1'sb0;
			if (mem_we)
				wr_ptr <= (wr_ptr == (FRAME_SIZE - 1) ? {PTR_WIDTH {1'sb0}} : wr_ptr + 1'b1);
			if (current_state == 3'd2)
				fill_need <= (first_fill ? FRAME_SIZE : FRAME_STEP);
			else if (mem_we)
				fill_need <= fill_need - 1'b1;
			case (current_state)
				3'd1: begin
					win_base_ptr <= 0;
					win_rd_idx <= 0;
					start_next_state_o <= 1;
				end
				3'd2: begin
					win_base_ptr <= (base_sum >= FRAME_SIZE ? base_sum - FRAME_SIZE : base_sum[PTR_WIDTH - 1:0]);
					win_rd_idx <= 0;
					start_next_state_o <= 1;
				end
				3'd3: fifo_rd_en_o <= fill_need > (mem_we + (fifo_rd_en_o && ~fifo_empty_i));
				3'd4: begin
					valid_to_read <= 1'b1;
					win_rd_idx <= win_rd_idx + 1'b1;
					fifo_rd_en_o <= fill_need > (mem_we + (fifo_rd_en_o && ~fifo_empty_i));
					if (win_rd_idx == (FRAME_SIZE - 1))
						first_fill <= 1'b0;
				end
				default: begin
					wr_ptr <= wr_ptr;
					win_rd_idx <= win_rd_idx;
				end
			endcase
		end
	end
	reg fifo_rd_en_ff;
	always @(posedge clk) begin
		valid_to_read_o <= valid_to_read;
		fifo_rd_en_ff <= fifo_rd_en_o;
	end
	assign read_data_o = buffer_rdata;
	initial _sv2v_0 = 0;
endmodule
