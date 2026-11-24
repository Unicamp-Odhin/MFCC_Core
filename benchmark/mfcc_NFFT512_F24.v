module cos_lut_rom (
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
			0: dout = 32'h01000000;
			1: dout = 32'h01000000;
			2: dout = 32'h01000000;
			3: dout = 32'h01000000;
			4: dout = 32'h01000000;
			5: dout = 32'h01000000;
			6: dout = 32'h01000000;
			7: dout = 32'h01000000;
			8: dout = 32'h01000000;
			9: dout = 32'h01000000;
			10: dout = 32'h01000000;
			11: dout = 32'h01000000;
			12: dout = 32'h01000000;
			13: dout = 32'h01000000;
			14: dout = 32'h01000000;
			15: dout = 32'h01000000;
			16: dout = 32'h01000000;
			17: dout = 32'h01000000;
			18: dout = 32'h01000000;
			19: dout = 32'h01000000;
			20: dout = 32'h01000000;
			21: dout = 32'h01000000;
			22: dout = 32'h01000000;
			23: dout = 32'h01000000;
			24: dout = 32'h01000000;
			25: dout = 32'h01000000;
			26: dout = 32'h01000000;
			27: dout = 32'h01000000;
			28: dout = 32'h01000000;
			29: dout = 32'h01000000;
			30: dout = 32'h01000000;
			31: dout = 32'h01000000;
			32: dout = 32'h01000000;
			33: dout = 32'h01000000;
			34: dout = 32'h01000000;
			35: dout = 32'h01000000;
			36: dout = 32'h01000000;
			37: dout = 32'h01000000;
			38: dout = 32'h01000000;
			39: dout = 32'h01000000;
			40: dout = 32'h00ffcd79;
			41: dout = 32'h00fe39bc;
			42: dout = 32'h00fb14be;
			43: dout = 32'h00f66377;
			44: dout = 32'h00f02d4f;
			45: dout = 32'h00e87c12;
			46: dout = 32'h00df5be6;
			47: dout = 32'h00d4db31;
			48: dout = 32'h00c90a88;
			49: dout = 32'h00bbfc8f;
			50: dout = 32'h00adc5e3;
			51: dout = 32'h009e7cf1;
			52: dout = 32'h008e39da;
			53: dout = 32'h007d1648;
			54: dout = 32'h006b2d49;
			55: dout = 32'h00589b20;
			56: dout = 32'h00457d1f;
			57: dout = 32'h0031f170;
			58: dout = 32'h001e16ee;
			59: dout = 32'h000a0cee;
			60: dout = 32'hfff5f312;
			61: dout = 32'hffe1e912;
			62: dout = 32'hffce0e90;
			63: dout = 32'hffba82e1;
			64: dout = 32'hffa764e0;
			65: dout = 32'hff94d2b7;
			66: dout = 32'hff82e9b8;
			67: dout = 32'hff71c626;
			68: dout = 32'hff61830f;
			69: dout = 32'hff523a1d;
			70: dout = 32'hff440371;
			71: dout = 32'hff36f578;
			72: dout = 32'hff2b24cf;
			73: dout = 32'hff20a41a;
			74: dout = 32'hff1783ee;
			75: dout = 32'hff0fd2b1;
			76: dout = 32'hff099c89;
			77: dout = 32'hff04eb42;
			78: dout = 32'hff01c644;
			79: dout = 32'hff003287;
			80: dout = 32'h00ff35f9;
			81: dout = 32'h00f8ed3c;
			82: dout = 32'h00ec835e;
			83: dout = 32'h00da46a0;
			84: dout = 32'h00c2a9f7;
			85: dout = 32'h00a6423a;
			86: dout = 32'h0085c277;
			87: dout = 32'h0061f78a;
			88: dout = 32'h003bc313;
			89: dout = 32'h001415e5;
			90: dout = 32'hffebea1b;
			91: dout = 32'hffc43ced;
			92: dout = 32'hff9e0876;
			93: dout = 32'hff7a3d89;
			94: dout = 32'hff59bdc6;
			95: dout = 32'hff3d5609;
			96: dout = 32'hff25b960;
			97: dout = 32'hff137ca2;
			98: dout = 32'hff0712c4;
			99: dout = 32'hff00ca07;
			100: dout = 32'hff00ca07;
			101: dout = 32'hff0712c4;
			102: dout = 32'hff137ca2;
			103: dout = 32'hff25b960;
			104: dout = 32'hff3d5609;
			105: dout = 32'hff59bdc6;
			106: dout = 32'hff7a3d89;
			107: dout = 32'hff9e0876;
			108: dout = 32'hffc43ced;
			109: dout = 32'hffebea1b;
			110: dout = 32'h001415e5;
			111: dout = 32'h003bc313;
			112: dout = 32'h0061f78a;
			113: dout = 32'h0085c277;
			114: dout = 32'h00a6423a;
			115: dout = 32'h00c2a9f7;
			116: dout = 32'h00da46a0;
			117: dout = 32'h00ec835e;
			118: dout = 32'h00f8ed3c;
			119: dout = 32'h00ff35f9;
			120: dout = 32'h00fe39bc;
			121: dout = 32'h00f02d4f;
			122: dout = 32'h00d4db31;
			123: dout = 32'h00adc5e3;
			124: dout = 32'h007d1648;
			125: dout = 32'h00457d1f;
			126: dout = 32'h000a0cee;
			127: dout = 32'hffce0e90;
			128: dout = 32'hff94d2b7;
			129: dout = 32'hff61830f;
			130: dout = 32'hff36f578;
			131: dout = 32'hff1783ee;
			132: dout = 32'hff04eb42;
			133: dout = 32'hff003287;
			134: dout = 32'hff099c89;
			135: dout = 32'hff20a41a;
			136: dout = 32'hff440371;
			137: dout = 32'hff71c626;
			138: dout = 32'hffa764e0;
			139: dout = 32'hffe1e912;
			140: dout = 32'h001e16ee;
			141: dout = 32'h00589b20;
			142: dout = 32'h008e39da;
			143: dout = 32'h00bbfc8f;
			144: dout = 32'h00df5be6;
			145: dout = 32'h00f66377;
			146: dout = 32'h00ffcd79;
			147: dout = 32'h00fb14be;
			148: dout = 32'h00e87c12;
			149: dout = 32'h00c90a88;
			150: dout = 32'h009e7cf1;
			151: dout = 32'h006b2d49;
			152: dout = 32'h0031f170;
			153: dout = 32'hfff5f312;
			154: dout = 32'hffba82e1;
			155: dout = 32'hff82e9b8;
			156: dout = 32'hff523a1d;
			157: dout = 32'hff2b24cf;
			158: dout = 32'hff0fd2b1;
			159: dout = 32'hff01c644;
			160: dout = 32'h00fcd925;
			161: dout = 32'h00e41901;
			162: dout = 32'h00b504f3;
			163: dout = 32'h007438b8;
			164: dout = 32'h00280c16;
			165: dout = 32'hffd7f3ea;
			166: dout = 32'hff8bc748;
			167: dout = 32'hff4afb0d;
			168: dout = 32'hff1be6ff;
			169: dout = 32'hff0326db;
			170: dout = 32'hff0326db;
			171: dout = 32'hff1be6ff;
			172: dout = 32'hff4afb0d;
			173: dout = 32'hff8bc748;
			174: dout = 32'hffd7f3ea;
			175: dout = 32'h00280c16;
			176: dout = 32'h007438b8;
			177: dout = 32'h00b504f3;
			178: dout = 32'h00e41901;
			179: dout = 32'h00fcd925;
			180: dout = 32'h00fcd925;
			181: dout = 32'h00e41901;
			182: dout = 32'h00b504f3;
			183: dout = 32'h007438b8;
			184: dout = 32'h00280c16;
			185: dout = 32'hffd7f3ea;
			186: dout = 32'hff8bc748;
			187: dout = 32'hff4afb0d;
			188: dout = 32'hff1be6ff;
			189: dout = 32'hff0326db;
			190: dout = 32'hff0326db;
			191: dout = 32'hff1be6ff;
			192: dout = 32'hff4afb0d;
			193: dout = 32'hff8bc748;
			194: dout = 32'hffd7f3ea;
			195: dout = 32'h00280c16;
			196: dout = 32'h007438b8;
			197: dout = 32'h00b504f3;
			198: dout = 32'h00e41901;
			199: dout = 32'h00fcd925;
			200: dout = 32'h00fb14be;
			201: dout = 32'h00d4db31;
			202: dout = 32'h008e39da;
			203: dout = 32'h0031f170;
			204: dout = 32'hffce0e90;
			205: dout = 32'hff71c626;
			206: dout = 32'hff2b24cf;
			207: dout = 32'hff04eb42;
			208: dout = 32'hff04eb42;
			209: dout = 32'hff2b24cf;
			210: dout = 32'hff71c626;
			211: dout = 32'hffce0e90;
			212: dout = 32'h0031f170;
			213: dout = 32'h008e39da;
			214: dout = 32'h00d4db31;
			215: dout = 32'h00fb14be;
			216: dout = 32'h00fb14be;
			217: dout = 32'h00d4db31;
			218: dout = 32'h008e39da;
			219: dout = 32'h0031f170;
			220: dout = 32'hffce0e90;
			221: dout = 32'hff71c626;
			222: dout = 32'hff2b24cf;
			223: dout = 32'hff04eb42;
			224: dout = 32'hff04eb42;
			225: dout = 32'hff2b24cf;
			226: dout = 32'hff71c626;
			227: dout = 32'hffce0e90;
			228: dout = 32'h0031f170;
			229: dout = 32'h008e39da;
			230: dout = 32'h00d4db31;
			231: dout = 32'h00fb14be;
			232: dout = 32'h00fb14be;
			233: dout = 32'h00d4db31;
			234: dout = 32'h008e39da;
			235: dout = 32'h0031f170;
			236: dout = 32'hffce0e90;
			237: dout = 32'hff71c626;
			238: dout = 32'hff2b24cf;
			239: dout = 32'hff04eb42;
			240: dout = 32'h00f8ed3c;
			241: dout = 32'h00c2a9f7;
			242: dout = 32'h0061f78a;
			243: dout = 32'hffebea1b;
			244: dout = 32'hff7a3d89;
			245: dout = 32'hff25b960;
			246: dout = 32'hff00ca07;
			247: dout = 32'hff137ca2;
			248: dout = 32'hff59bdc6;
			249: dout = 32'hffc43ced;
			250: dout = 32'h003bc313;
			251: dout = 32'h00a6423a;
			252: dout = 32'h00ec835e;
			253: dout = 32'h00ff35f9;
			254: dout = 32'h00da46a0;
			255: dout = 32'h0085c277;
			256: dout = 32'h001415e5;
			257: dout = 32'hff9e0876;
			258: dout = 32'hff3d5609;
			259: dout = 32'hff0712c4;
			260: dout = 32'hff0712c4;
			261: dout = 32'hff3d5609;
			262: dout = 32'hff9e0876;
			263: dout = 32'h001415e5;
			264: dout = 32'h0085c277;
			265: dout = 32'h00da46a0;
			266: dout = 32'h00ff35f9;
			267: dout = 32'h00ec835e;
			268: dout = 32'h00a6423a;
			269: dout = 32'h003bc313;
			270: dout = 32'hffc43ced;
			271: dout = 32'hff59bdc6;
			272: dout = 32'hff137ca2;
			273: dout = 32'hff00ca07;
			274: dout = 32'hff25b960;
			275: dout = 32'hff7a3d89;
			276: dout = 32'hffebea1b;
			277: dout = 32'h0061f78a;
			278: dout = 32'h00c2a9f7;
			279: dout = 32'h00f8ed3c;
			280: dout = 32'h00f66377;
			281: dout = 32'h00adc5e3;
			282: dout = 32'h0031f170;
			283: dout = 32'hffa764e0;
			284: dout = 32'hff36f578;
			285: dout = 32'hff01c644;
			286: dout = 32'hff1783ee;
			287: dout = 32'hff71c626;
			288: dout = 32'hfff5f312;
			289: dout = 32'h007d1648;
			290: dout = 32'h00df5be6;
			291: dout = 32'h00ffcd79;
			292: dout = 32'h00d4db31;
			293: dout = 32'h006b2d49;
			294: dout = 32'hffe1e912;
			295: dout = 32'hff61830f;
			296: dout = 32'hff0fd2b1;
			297: dout = 32'hff04eb42;
			298: dout = 32'hff440371;
			299: dout = 32'hffba82e1;
			300: dout = 32'h00457d1f;
			301: dout = 32'h00bbfc8f;
			302: dout = 32'h00fb14be;
			303: dout = 32'h00f02d4f;
			304: dout = 32'h009e7cf1;
			305: dout = 32'h001e16ee;
			306: dout = 32'hff94d2b7;
			307: dout = 32'hff2b24cf;
			308: dout = 32'hff003287;
			309: dout = 32'hff20a41a;
			310: dout = 32'hff82e9b8;
			311: dout = 32'h000a0cee;
			312: dout = 32'h008e39da;
			313: dout = 32'h00e87c12;
			314: dout = 32'h00fe39bc;
			315: dout = 32'h00c90a88;
			316: dout = 32'h00589b20;
			317: dout = 32'hffce0e90;
			318: dout = 32'hff523a1d;
			319: dout = 32'hff099c89;
			320: dout = 32'h00f37871;
			321: dout = 32'h00967918;
			322: dout = 32'h00000000;
			323: dout = 32'hff6986e8;
			324: dout = 32'hff0c878f;
			325: dout = 32'hff0c878f;
			326: dout = 32'hff6986e8;
			327: dout = 32'h00000000;
			328: dout = 32'h00967918;
			329: dout = 32'h00f37871;
			330: dout = 32'h00f37871;
			331: dout = 32'h00967918;
			332: dout = 32'h00000000;
			333: dout = 32'hff6986e8;
			334: dout = 32'hff0c878f;
			335: dout = 32'hff0c878f;
			336: dout = 32'hff6986e8;
			337: dout = 32'h00000000;
			338: dout = 32'h00967918;
			339: dout = 32'h00f37871;
			340: dout = 32'h00f37871;
			341: dout = 32'h00967918;
			342: dout = 32'h00000000;
			343: dout = 32'hff6986e8;
			344: dout = 32'hff0c878f;
			345: dout = 32'hff0c878f;
			346: dout = 32'hff6986e8;
			347: dout = 32'h00000000;
			348: dout = 32'h00967918;
			349: dout = 32'h00f37871;
			350: dout = 32'h00f37871;
			351: dout = 32'h00967918;
			352: dout = 32'h00000000;
			353: dout = 32'hff6986e8;
			354: dout = 32'hff0c878f;
			355: dout = 32'hff0c878f;
			356: dout = 32'hff6986e8;
			357: dout = 32'h00000000;
			358: dout = 32'h00967918;
			359: dout = 32'h00f37871;
			360: dout = 32'h00f02d4f;
			361: dout = 32'h007d1648;
			362: dout = 32'hffce0e90;
			363: dout = 32'hff36f578;
			364: dout = 32'hff003287;
			365: dout = 32'hff440371;
			366: dout = 32'hffe1e912;
			367: dout = 32'h008e39da;
			368: dout = 32'h00f66377;
			369: dout = 32'h00e87c12;
			370: dout = 32'h006b2d49;
			371: dout = 32'hffba82e1;
			372: dout = 32'hff2b24cf;
			373: dout = 32'hff01c644;
			374: dout = 32'hff523a1d;
			375: dout = 32'hfff5f312;
			376: dout = 32'h009e7cf1;
			377: dout = 32'h00fb14be;
			378: dout = 32'h00df5be6;
			379: dout = 32'h00589b20;
			380: dout = 32'hffa764e0;
			381: dout = 32'hff20a41a;
			382: dout = 32'hff04eb42;
			383: dout = 32'hff61830f;
			384: dout = 32'h000a0cee;
			385: dout = 32'h00adc5e3;
			386: dout = 32'h00fe39bc;
			387: dout = 32'h00d4db31;
			388: dout = 32'h00457d1f;
			389: dout = 32'hff94d2b7;
			390: dout = 32'hff1783ee;
			391: dout = 32'hff099c89;
			392: dout = 32'hff71c626;
			393: dout = 32'h001e16ee;
			394: dout = 32'h00bbfc8f;
			395: dout = 32'h00ffcd79;
			396: dout = 32'h00c90a88;
			397: dout = 32'h0031f170;
			398: dout = 32'hff82e9b8;
			399: dout = 32'hff0fd2b1;
			400: dout = 32'h00ec835e;
			401: dout = 32'h0061f78a;
			402: dout = 32'hff9e0876;
			403: dout = 32'hff137ca2;
			404: dout = 32'hff137ca2;
			405: dout = 32'hff9e0876;
			406: dout = 32'h0061f78a;
			407: dout = 32'h00ec835e;
			408: dout = 32'h00ec835e;
			409: dout = 32'h0061f78a;
			410: dout = 32'hff9e0876;
			411: dout = 32'hff137ca2;
			412: dout = 32'hff137ca2;
			413: dout = 32'hff9e0876;
			414: dout = 32'h0061f78a;
			415: dout = 32'h00ec835e;
			416: dout = 32'h00ec835e;
			417: dout = 32'h0061f78a;
			418: dout = 32'hff9e0876;
			419: dout = 32'hff137ca2;
			420: dout = 32'hff137ca2;
			421: dout = 32'hff9e0876;
			422: dout = 32'h0061f78a;
			423: dout = 32'h00ec835e;
			424: dout = 32'h00ec835e;
			425: dout = 32'h0061f78a;
			426: dout = 32'hff9e0876;
			427: dout = 32'hff137ca2;
			428: dout = 32'hff137ca2;
			429: dout = 32'hff9e0876;
			430: dout = 32'h0061f78a;
			431: dout = 32'h00ec835e;
			432: dout = 32'h00ec835e;
			433: dout = 32'h0061f78a;
			434: dout = 32'hff9e0876;
			435: dout = 32'hff137ca2;
			436: dout = 32'hff137ca2;
			437: dout = 32'hff9e0876;
			438: dout = 32'h0061f78a;
			439: dout = 32'h00ec835e;
			440: dout = 32'h00e87c12;
			441: dout = 32'h00457d1f;
			442: dout = 32'hff71c626;
			443: dout = 32'hff01c644;
			444: dout = 32'hff440371;
			445: dout = 32'h000a0cee;
			446: dout = 32'h00c90a88;
			447: dout = 32'h00fb14be;
			448: dout = 32'h007d1648;
			449: dout = 32'hffa764e0;
			450: dout = 32'hff0fd2b1;
			451: dout = 32'hff20a41a;
			452: dout = 32'hffce0e90;
			453: dout = 32'h009e7cf1;
			454: dout = 32'h00ffcd79;
			455: dout = 32'h00adc5e3;
			456: dout = 32'hffe1e912;
			457: dout = 32'hff2b24cf;
			458: dout = 32'hff099c89;
			459: dout = 32'hff94d2b7;
			460: dout = 32'h006b2d49;
			461: dout = 32'h00f66377;
			462: dout = 32'h00d4db31;
			463: dout = 32'h001e16ee;
			464: dout = 32'hff523a1d;
			465: dout = 32'hff003287;
			466: dout = 32'hff61830f;
			467: dout = 32'h0031f170;
			468: dout = 32'h00df5be6;
			469: dout = 32'h00f02d4f;
			470: dout = 32'h00589b20;
			471: dout = 32'hff82e9b8;
			472: dout = 32'hff04eb42;
			473: dout = 32'hff36f578;
			474: dout = 32'hfff5f312;
			475: dout = 32'h00bbfc8f;
			476: dout = 32'h00fe39bc;
			477: dout = 32'h008e39da;
			478: dout = 32'hffba82e1;
			479: dout = 32'hff1783ee;
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
	localparam signed [31:0] FACTOR0 = 2652710;
	localparam signed [31:0] FACTORK = 3751499;
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
	input wire [8:0] addr;
	output reg [31:0] dout;
	always @(*) begin
		if (_sv2v_0)
			;
		case (addr)
			0: dout = 32'h00147ae1;
			1: dout = 32'h00147e9e;
			2: dout = 32'h001489d4;
			3: dout = 32'h00149c83;
			4: dout = 32'h0014b6aa;
			5: dout = 32'h0014d847;
			6: dout = 32'h00150157;
			7: dout = 32'h001531d9;
			8: dout = 32'h001569c9;
			9: dout = 32'h0015a923;
			10: dout = 32'h0015efe4;
			11: dout = 32'h00163e07;
			12: dout = 32'h00169387;
			13: dout = 32'h0016f05f;
			14: dout = 32'h00175489;
			15: dout = 32'h0017bffe;
			16: dout = 32'h001832b7;
			17: dout = 32'h0018acae;
			18: dout = 32'h00192ddb;
			19: dout = 32'h0019b635;
			20: dout = 32'h001a45b3;
			21: dout = 32'h001adc4d;
			22: dout = 32'h001b79fa;
			23: dout = 32'h001c1eae;
			24: dout = 32'h001cca60;
			25: dout = 32'h001d7d04;
			26: dout = 32'h001e3690;
			27: dout = 32'h001ef6f8;
			28: dout = 32'h001fbe2e;
			29: dout = 32'h00208c28;
			30: dout = 32'h002160d7;
			31: dout = 32'h00223c2e;
			32: dout = 32'h00231e20;
			33: dout = 32'h0024069d;
			34: dout = 32'h0024f597;
			35: dout = 32'h0025eb00;
			36: dout = 32'h0026e6c6;
			37: dout = 32'h0027e8db;
			38: dout = 32'h0028f12f;
			39: dout = 32'h0029ffaf;
			40: dout = 32'h002b144b;
			41: dout = 32'h002c2ef2;
			42: dout = 32'h002d4f91;
			43: dout = 32'h002e7617;
			44: dout = 32'h002fa270;
			45: dout = 32'h0030d489;
			46: dout = 32'h00320c50;
			47: dout = 32'h003349af;
			48: dout = 32'h00348c94;
			49: dout = 32'h0035d4e9;
			50: dout = 32'h0037229a;
			51: dout = 32'h00387592;
			52: dout = 32'h0039cdbb;
			53: dout = 32'h003b2aff;
			54: dout = 32'h003c8d47;
			55: dout = 32'h003df47f;
			56: dout = 32'h003f608e;
			57: dout = 32'h0040d15e;
			58: dout = 32'h004246d7;
			59: dout = 32'h0043c0e1;
			60: dout = 32'h00453f65;
			61: dout = 32'h0046c24a;
			62: dout = 32'h00484978;
			63: dout = 32'h0049d4d5;
			64: dout = 32'h004b644a;
			65: dout = 32'h004cf7bb;
			66: dout = 32'h004e8f11;
			67: dout = 32'h00502a30;
			68: dout = 32'h0051c8ff;
			69: dout = 32'h00536b64;
			70: dout = 32'h00551143;
			71: dout = 32'h0056ba82;
			72: dout = 32'h00586707;
			73: dout = 32'h005a16b6;
			74: dout = 32'h005bc973;
			75: dout = 32'h005d7f23;
			76: dout = 32'h005f37aa;
			77: dout = 32'h0060f2ec;
			78: dout = 32'h0062b0ce;
			79: dout = 32'h00647132;
			80: dout = 32'h006633fc;
			81: dout = 32'h0067f910;
			82: dout = 32'h0069c051;
			83: dout = 32'h006b89a2;
			84: dout = 32'h006d54e5;
			85: dout = 32'h006f21ff;
			86: dout = 32'h0070f0d1;
			87: dout = 32'h0072c13e;
			88: dout = 32'h00749329;
			89: dout = 32'h00766674;
			90: dout = 32'h00783b02;
			91: dout = 32'h007a10b4;
			92: dout = 32'h007be76d;
			93: dout = 32'h007dbf0e;
			94: dout = 32'h007f977b;
			95: dout = 32'h00817096;
			96: dout = 32'h00834a3f;
			97: dout = 32'h00852459;
			98: dout = 32'h0086fec5;
			99: dout = 32'h0088d967;
			100: dout = 32'h008ab41f;
			101: dout = 32'h008c8ed0;
			102: dout = 32'h008e695b;
			103: dout = 32'h009043a2;
			104: dout = 32'h00921d87;
			105: dout = 32'h0093f6ec;
			106: dout = 32'h0095cfb4;
			107: dout = 32'h0097a7bf;
			108: dout = 32'h00997ef0;
			109: dout = 32'h009b5529;
			110: dout = 32'h009d2a4d;
			111: dout = 32'h009efe3d;
			112: dout = 32'h00a0d0db;
			113: dout = 32'h00a2a20b;
			114: dout = 32'h00a471ae;
			115: dout = 32'h00a63fa8;
			116: dout = 32'h00a80bda;
			117: dout = 32'h00a9d628;
			118: dout = 32'h00ab9e74;
			119: dout = 32'h00ad64a2;
			120: dout = 32'h00af2895;
			121: dout = 32'h00b0ea30;
			122: dout = 32'h00b2a956;
			123: dout = 32'h00b465ec;
			124: dout = 32'h00b61fd4;
			125: dout = 32'h00b7d6f3;
			126: dout = 32'h00b98b2d;
			127: dout = 32'h00bb3c66;
			128: dout = 32'h00bcea83;
			129: dout = 32'h00be9569;
			130: dout = 32'h00c03cfb;
			131: dout = 32'h00c1e121;
			132: dout = 32'h00c381be;
			133: dout = 32'h00c51eb8;
			134: dout = 32'h00c6b7f6;
			135: dout = 32'h00c84d5d;
			136: dout = 32'h00c9ded3;
			137: dout = 32'h00cb6c3f;
			138: dout = 32'h00ccf588;
			139: dout = 32'h00ce7a94;
			140: dout = 32'h00cffb4c;
			141: dout = 32'h00d17796;
			142: dout = 32'h00d2ef5a;
			143: dout = 32'h00d46282;
			144: dout = 32'h00d5d0f4;
			145: dout = 32'h00d73a9a;
			146: dout = 32'h00d89f5d;
			147: dout = 32'h00d9ff26;
			148: dout = 32'h00db59df;
			149: dout = 32'h00dcaf72;
			150: dout = 32'h00ddffc9;
			151: dout = 32'h00df4acf;
			152: dout = 32'h00e0906f;
			153: dout = 32'h00e1d093;
			154: dout = 32'h00e30b29;
			155: dout = 32'h00e4401b;
			156: dout = 32'h00e56f57;
			157: dout = 32'h00e698c9;
			158: dout = 32'h00e7bc5d;
			159: dout = 32'h00e8da03;
			160: dout = 32'h00e9f1a6;
			161: dout = 32'h00eb0337;
			162: dout = 32'h00ec0ea3;
			163: dout = 32'h00ed13d9;
			164: dout = 32'h00ee12c9;
			165: dout = 32'h00ef0b62;
			166: dout = 32'h00effd95;
			167: dout = 32'h00f0e953;
			168: dout = 32'h00f1ce8c;
			169: dout = 32'h00f2ad32;
			170: dout = 32'h00f38537;
			171: dout = 32'h00f4568d;
			172: dout = 32'h00f52127;
			173: dout = 32'h00f5e4f8;
			174: dout = 32'h00f6a1f3;
			175: dout = 32'h00f7580d;
			176: dout = 32'h00f80739;
			177: dout = 32'h00f8af6e;
			178: dout = 32'h00f9509f;
			179: dout = 32'h00f9eac3;
			180: dout = 32'h00fa7dd1;
			181: dout = 32'h00fb09be;
			182: dout = 32'h00fb8e83;
			183: dout = 32'h00fc0c15;
			184: dout = 32'h00fc826e;
			185: dout = 32'h00fcf187;
			186: dout = 32'h00fd5957;
			187: dout = 32'h00fdb9d8;
			188: dout = 32'h00fe1305;
			189: dout = 32'h00fe64d7;
			190: dout = 32'h00feaf4a;
			191: dout = 32'h00fef258;
			192: dout = 32'h00ff2dfe;
			193: dout = 32'h00ff6237;
			194: dout = 32'h00ff8f00;
			195: dout = 32'h00ffb457;
			196: dout = 32'h00ffd239;
			197: dout = 32'h00ffe8a4;
			198: dout = 32'h00fff797;
			199: dout = 32'h00ffff11;
			200: dout = 32'h00ffff11;
			201: dout = 32'h00fff797;
			202: dout = 32'h00ffe8a4;
			203: dout = 32'h00ffd239;
			204: dout = 32'h00ffb457;
			205: dout = 32'h00ff8f00;
			206: dout = 32'h00ff6237;
			207: dout = 32'h00ff2dfe;
			208: dout = 32'h00fef258;
			209: dout = 32'h00feaf4a;
			210: dout = 32'h00fe64d7;
			211: dout = 32'h00fe1305;
			212: dout = 32'h00fdb9d8;
			213: dout = 32'h00fd5957;
			214: dout = 32'h00fcf187;
			215: dout = 32'h00fc826e;
			216: dout = 32'h00fc0c15;
			217: dout = 32'h00fb8e83;
			218: dout = 32'h00fb09be;
			219: dout = 32'h00fa7dd1;
			220: dout = 32'h00f9eac3;
			221: dout = 32'h00f9509f;
			222: dout = 32'h00f8af6e;
			223: dout = 32'h00f80739;
			224: dout = 32'h00f7580d;
			225: dout = 32'h00f6a1f3;
			226: dout = 32'h00f5e4f8;
			227: dout = 32'h00f52127;
			228: dout = 32'h00f4568d;
			229: dout = 32'h00f38537;
			230: dout = 32'h00f2ad32;
			231: dout = 32'h00f1ce8c;
			232: dout = 32'h00f0e953;
			233: dout = 32'h00effd95;
			234: dout = 32'h00ef0b62;
			235: dout = 32'h00ee12c9;
			236: dout = 32'h00ed13d9;
			237: dout = 32'h00ec0ea3;
			238: dout = 32'h00eb0337;
			239: dout = 32'h00e9f1a6;
			240: dout = 32'h00e8da03;
			241: dout = 32'h00e7bc5d;
			242: dout = 32'h00e698c9;
			243: dout = 32'h00e56f57;
			244: dout = 32'h00e4401b;
			245: dout = 32'h00e30b29;
			246: dout = 32'h00e1d093;
			247: dout = 32'h00e0906f;
			248: dout = 32'h00df4acf;
			249: dout = 32'h00ddffc9;
			250: dout = 32'h00dcaf72;
			251: dout = 32'h00db59df;
			252: dout = 32'h00d9ff26;
			253: dout = 32'h00d89f5d;
			254: dout = 32'h00d73a9a;
			255: dout = 32'h00d5d0f4;
			256: dout = 32'h00d46282;
			257: dout = 32'h00d2ef5a;
			258: dout = 32'h00d17796;
			259: dout = 32'h00cffb4c;
			260: dout = 32'h00ce7a94;
			261: dout = 32'h00ccf588;
			262: dout = 32'h00cb6c3f;
			263: dout = 32'h00c9ded3;
			264: dout = 32'h00c84d5d;
			265: dout = 32'h00c6b7f6;
			266: dout = 32'h00c51eb8;
			267: dout = 32'h00c381be;
			268: dout = 32'h00c1e121;
			269: dout = 32'h00c03cfb;
			270: dout = 32'h00be9569;
			271: dout = 32'h00bcea83;
			272: dout = 32'h00bb3c66;
			273: dout = 32'h00b98b2d;
			274: dout = 32'h00b7d6f3;
			275: dout = 32'h00b61fd4;
			276: dout = 32'h00b465ec;
			277: dout = 32'h00b2a956;
			278: dout = 32'h00b0ea30;
			279: dout = 32'h00af2895;
			280: dout = 32'h00ad64a2;
			281: dout = 32'h00ab9e74;
			282: dout = 32'h00a9d628;
			283: dout = 32'h00a80bda;
			284: dout = 32'h00a63fa8;
			285: dout = 32'h00a471ae;
			286: dout = 32'h00a2a20b;
			287: dout = 32'h00a0d0db;
			288: dout = 32'h009efe3d;
			289: dout = 32'h009d2a4d;
			290: dout = 32'h009b5529;
			291: dout = 32'h00997ef0;
			292: dout = 32'h0097a7bf;
			293: dout = 32'h0095cfb4;
			294: dout = 32'h0093f6ec;
			295: dout = 32'h00921d87;
			296: dout = 32'h009043a2;
			297: dout = 32'h008e695b;
			298: dout = 32'h008c8ed0;
			299: dout = 32'h008ab41f;
			300: dout = 32'h0088d967;
			301: dout = 32'h0086fec5;
			302: dout = 32'h00852459;
			303: dout = 32'h00834a3f;
			304: dout = 32'h00817096;
			305: dout = 32'h007f977b;
			306: dout = 32'h007dbf0e;
			307: dout = 32'h007be76d;
			308: dout = 32'h007a10b4;
			309: dout = 32'h00783b02;
			310: dout = 32'h00766674;
			311: dout = 32'h00749329;
			312: dout = 32'h0072c13e;
			313: dout = 32'h0070f0d1;
			314: dout = 32'h006f21ff;
			315: dout = 32'h006d54e5;
			316: dout = 32'h006b89a2;
			317: dout = 32'h0069c051;
			318: dout = 32'h0067f910;
			319: dout = 32'h006633fc;
			320: dout = 32'h00647132;
			321: dout = 32'h0062b0ce;
			322: dout = 32'h0060f2ec;
			323: dout = 32'h005f37aa;
			324: dout = 32'h005d7f23;
			325: dout = 32'h005bc973;
			326: dout = 32'h005a16b6;
			327: dout = 32'h00586707;
			328: dout = 32'h0056ba82;
			329: dout = 32'h00551143;
			330: dout = 32'h00536b64;
			331: dout = 32'h0051c8ff;
			332: dout = 32'h00502a30;
			333: dout = 32'h004e8f11;
			334: dout = 32'h004cf7bb;
			335: dout = 32'h004b644a;
			336: dout = 32'h0049d4d5;
			337: dout = 32'h00484978;
			338: dout = 32'h0046c24a;
			339: dout = 32'h00453f65;
			340: dout = 32'h0043c0e1;
			341: dout = 32'h004246d7;
			342: dout = 32'h0040d15e;
			343: dout = 32'h003f608e;
			344: dout = 32'h003df47f;
			345: dout = 32'h003c8d47;
			346: dout = 32'h003b2aff;
			347: dout = 32'h0039cdbb;
			348: dout = 32'h00387592;
			349: dout = 32'h0037229a;
			350: dout = 32'h0035d4e9;
			351: dout = 32'h00348c94;
			352: dout = 32'h003349af;
			353: dout = 32'h00320c50;
			354: dout = 32'h0030d489;
			355: dout = 32'h002fa270;
			356: dout = 32'h002e7617;
			357: dout = 32'h002d4f91;
			358: dout = 32'h002c2ef2;
			359: dout = 32'h002b144b;
			360: dout = 32'h0029ffaf;
			361: dout = 32'h0028f12f;
			362: dout = 32'h0027e8db;
			363: dout = 32'h0026e6c6;
			364: dout = 32'h0025eb00;
			365: dout = 32'h0024f597;
			366: dout = 32'h0024069d;
			367: dout = 32'h00231e20;
			368: dout = 32'h00223c2e;
			369: dout = 32'h002160d7;
			370: dout = 32'h00208c28;
			371: dout = 32'h001fbe2e;
			372: dout = 32'h001ef6f8;
			373: dout = 32'h001e3690;
			374: dout = 32'h001d7d04;
			375: dout = 32'h001cca60;
			376: dout = 32'h001c1eae;
			377: dout = 32'h001b79fa;
			378: dout = 32'h001adc4d;
			379: dout = 32'h001a45b3;
			380: dout = 32'h0019b635;
			381: dout = 32'h00192ddb;
			382: dout = 32'h0018acae;
			383: dout = 32'h001832b7;
			384: dout = 32'h0017bffe;
			385: dout = 32'h00175489;
			386: dout = 32'h0016f05f;
			387: dout = 32'h00169387;
			388: dout = 32'h00163e07;
			389: dout = 32'h0015efe4;
			390: dout = 32'h0015a923;
			391: dout = 32'h001569c9;
			392: dout = 32'h001531d9;
			393: dout = 32'h00150157;
			394: dout = 32'h0014d847;
			395: dout = 32'h0014b6aa;
			396: dout = 32'h00149c83;
			397: dout = 32'h001489d4;
			398: dout = 32'h00147e9e;
			399: dout = 32'h00147ae1;
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
	input wire [10:0] addr;
	output reg [31:0] dout;
	always @(*) begin
		if (_sv2v_0)
			;
		case (addr)
			0: dout = 32'h00010001;
			1: dout = 32'h01000000;
			2: dout = 32'h00000000;
			3: dout = 32'h00000000;
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
			25: dout = 32'h00000000;
			26: dout = 32'h00000000;
			27: dout = 32'h00000000;
			28: dout = 32'h00000000;
			29: dout = 32'h00000000;
			30: dout = 32'h00000000;
			31: dout = 32'h00000000;
			32: dout = 32'h00020003;
			33: dout = 32'h01000000;
			34: dout = 32'h00800000;
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
			50: dout = 32'h00000000;
			51: dout = 32'h00000000;
			52: dout = 32'h00000000;
			53: dout = 32'h00000000;
			54: dout = 32'h00000000;
			55: dout = 32'h00000000;
			56: dout = 32'h00000000;
			57: dout = 32'h00000000;
			58: dout = 32'h00000000;
			59: dout = 32'h00000000;
			60: dout = 32'h00000000;
			61: dout = 32'h00000000;
			62: dout = 32'h00000000;
			63: dout = 32'h00000000;
			64: dout = 32'h00030005;
			65: dout = 32'h00800000;
			66: dout = 32'h01000000;
			67: dout = 32'h00800000;
			68: dout = 32'h00000000;
			69: dout = 32'h00000000;
			70: dout = 32'h00000000;
			71: dout = 32'h00000000;
			72: dout = 32'h00000000;
			73: dout = 32'h00000000;
			74: dout = 32'h00000000;
			75: dout = 32'h00000000;
			76: dout = 32'h00000000;
			77: dout = 32'h00000000;
			78: dout = 32'h00000000;
			79: dout = 32'h00000000;
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
			96: dout = 32'h00050007;
			97: dout = 32'h00800000;
			98: dout = 32'h01000000;
			99: dout = 32'h00800000;
			100: dout = 32'h00000000;
			101: dout = 32'h00000000;
			102: dout = 32'h00000000;
			103: dout = 32'h00000000;
			104: dout = 32'h00000000;
			105: dout = 32'h00000000;
			106: dout = 32'h00000000;
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
			125: dout = 32'h00000000;
			126: dout = 32'h00000000;
			127: dout = 32'h00000000;
			128: dout = 32'h00070009;
			129: dout = 32'h00800000;
			130: dout = 32'h01000000;
			131: dout = 32'h00800000;
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
			150: dout = 32'h00000000;
			151: dout = 32'h00000000;
			152: dout = 32'h00000000;
			153: dout = 32'h00000000;
			154: dout = 32'h00000000;
			155: dout = 32'h00000000;
			156: dout = 32'h00000000;
			157: dout = 32'h00000000;
			158: dout = 32'h00000000;
			159: dout = 32'h00000000;
			160: dout = 32'h0009000b;
			161: dout = 32'h00800000;
			162: dout = 32'h01000000;
			163: dout = 32'h00800000;
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
			175: dout = 32'h00000000;
			176: dout = 32'h00000000;
			177: dout = 32'h00000000;
			178: dout = 32'h00000000;
			179: dout = 32'h00000000;
			180: dout = 32'h00000000;
			181: dout = 32'h00000000;
			182: dout = 32'h00000000;
			183: dout = 32'h00000000;
			184: dout = 32'h00000000;
			185: dout = 32'h00000000;
			186: dout = 32'h00000000;
			187: dout = 32'h00000000;
			188: dout = 32'h00000000;
			189: dout = 32'h00000000;
			190: dout = 32'h00000000;
			191: dout = 32'h00000000;
			192: dout = 32'h000b000d;
			193: dout = 32'h00800000;
			194: dout = 32'h01000000;
			195: dout = 32'h00800000;
			196: dout = 32'h00000000;
			197: dout = 32'h00000000;
			198: dout = 32'h00000000;
			199: dout = 32'h00000000;
			200: dout = 32'h00000000;
			201: dout = 32'h00000000;
			202: dout = 32'h00000000;
			203: dout = 32'h00000000;
			204: dout = 32'h00000000;
			205: dout = 32'h00000000;
			206: dout = 32'h00000000;
			207: dout = 32'h00000000;
			208: dout = 32'h00000000;
			209: dout = 32'h00000000;
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
			224: dout = 32'h000d000f;
			225: dout = 32'h00800000;
			226: dout = 32'h01000000;
			227: dout = 32'h00800000;
			228: dout = 32'h00000000;
			229: dout = 32'h00000000;
			230: dout = 32'h00000000;
			231: dout = 32'h00000000;
			232: dout = 32'h00000000;
			233: dout = 32'h00000000;
			234: dout = 32'h00000000;
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
			250: dout = 32'h00000000;
			251: dout = 32'h00000000;
			252: dout = 32'h00000000;
			253: dout = 32'h00000000;
			254: dout = 32'h00000000;
			255: dout = 32'h00000000;
			256: dout = 32'h000f0012;
			257: dout = 32'h00800000;
			258: dout = 32'h01000000;
			259: dout = 32'h00aaaaab;
			260: dout = 32'h00555555;
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
			275: dout = 32'h00000000;
			276: dout = 32'h00000000;
			277: dout = 32'h00000000;
			278: dout = 32'h00000000;
			279: dout = 32'h00000000;
			280: dout = 32'h00000000;
			281: dout = 32'h00000000;
			282: dout = 32'h00000000;
			283: dout = 32'h00000000;
			284: dout = 32'h00000000;
			285: dout = 32'h00000000;
			286: dout = 32'h00000000;
			287: dout = 32'h00000000;
			288: dout = 32'h00110014;
			289: dout = 32'h00555555;
			290: dout = 32'h00aaaaab;
			291: dout = 32'h01000000;
			292: dout = 32'h00800000;
			293: dout = 32'h00000000;
			294: dout = 32'h00000000;
			295: dout = 32'h00000000;
			296: dout = 32'h00000000;
			297: dout = 32'h00000000;
			298: dout = 32'h00000000;
			299: dout = 32'h00000000;
			300: dout = 32'h00000000;
			301: dout = 32'h00000000;
			302: dout = 32'h00000000;
			303: dout = 32'h00000000;
			304: dout = 32'h00000000;
			305: dout = 32'h00000000;
			306: dout = 32'h00000000;
			307: dout = 32'h00000000;
			308: dout = 32'h00000000;
			309: dout = 32'h00000000;
			310: dout = 32'h00000000;
			311: dout = 32'h00000000;
			312: dout = 32'h00000000;
			313: dout = 32'h00000000;
			314: dout = 32'h00000000;
			315: dout = 32'h00000000;
			316: dout = 32'h00000000;
			317: dout = 32'h00000000;
			318: dout = 32'h00000000;
			319: dout = 32'h00000000;
			320: dout = 32'h00140017;
			321: dout = 32'h00800000;
			322: dout = 32'h01000000;
			323: dout = 32'h00aaaaab;
			324: dout = 32'h00555555;
			325: dout = 32'h00000000;
			326: dout = 32'h00000000;
			327: dout = 32'h00000000;
			328: dout = 32'h00000000;
			329: dout = 32'h00000000;
			330: dout = 32'h00000000;
			331: dout = 32'h00000000;
			332: dout = 32'h00000000;
			333: dout = 32'h00000000;
			334: dout = 32'h00000000;
			335: dout = 32'h00000000;
			336: dout = 32'h00000000;
			337: dout = 32'h00000000;
			338: dout = 32'h00000000;
			339: dout = 32'h00000000;
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
			350: dout = 32'h00000000;
			351: dout = 32'h00000000;
			352: dout = 32'h0016001a;
			353: dout = 32'h00555555;
			354: dout = 32'h00aaaaab;
			355: dout = 32'h01000000;
			356: dout = 32'h00aaaaab;
			357: dout = 32'h00555555;
			358: dout = 32'h00000000;
			359: dout = 32'h00000000;
			360: dout = 32'h00000000;
			361: dout = 32'h00000000;
			362: dout = 32'h00000000;
			363: dout = 32'h00000000;
			364: dout = 32'h00000000;
			365: dout = 32'h00000000;
			366: dout = 32'h00000000;
			367: dout = 32'h00000000;
			368: dout = 32'h00000000;
			369: dout = 32'h00000000;
			370: dout = 32'h00000000;
			371: dout = 32'h00000000;
			372: dout = 32'h00000000;
			373: dout = 32'h00000000;
			374: dout = 32'h00000000;
			375: dout = 32'h00000000;
			376: dout = 32'h00000000;
			377: dout = 32'h00000000;
			378: dout = 32'h00000000;
			379: dout = 32'h00000000;
			380: dout = 32'h00000000;
			381: dout = 32'h00000000;
			382: dout = 32'h00000000;
			383: dout = 32'h00000000;
			384: dout = 32'h0019001d;
			385: dout = 32'h00555555;
			386: dout = 32'h00aaaaab;
			387: dout = 32'h01000000;
			388: dout = 32'h00aaaaab;
			389: dout = 32'h00555555;
			390: dout = 32'h00000000;
			391: dout = 32'h00000000;
			392: dout = 32'h00000000;
			393: dout = 32'h00000000;
			394: dout = 32'h00000000;
			395: dout = 32'h00000000;
			396: dout = 32'h00000000;
			397: dout = 32'h00000000;
			398: dout = 32'h00000000;
			399: dout = 32'h00000000;
			400: dout = 32'h00000000;
			401: dout = 32'h00000000;
			402: dout = 32'h00000000;
			403: dout = 32'h00000000;
			404: dout = 32'h00000000;
			405: dout = 32'h00000000;
			406: dout = 32'h00000000;
			407: dout = 32'h00000000;
			408: dout = 32'h00000000;
			409: dout = 32'h00000000;
			410: dout = 32'h00000000;
			411: dout = 32'h00000000;
			412: dout = 32'h00000000;
			413: dout = 32'h00000000;
			414: dout = 32'h00000000;
			415: dout = 32'h00000000;
			416: dout = 32'h001c0020;
			417: dout = 32'h00555555;
			418: dout = 32'h00aaaaab;
			419: dout = 32'h01000000;
			420: dout = 32'h00aaaaab;
			421: dout = 32'h00555555;
			422: dout = 32'h00000000;
			423: dout = 32'h00000000;
			424: dout = 32'h00000000;
			425: dout = 32'h00000000;
			426: dout = 32'h00000000;
			427: dout = 32'h00000000;
			428: dout = 32'h00000000;
			429: dout = 32'h00000000;
			430: dout = 32'h00000000;
			431: dout = 32'h00000000;
			432: dout = 32'h00000000;
			433: dout = 32'h00000000;
			434: dout = 32'h00000000;
			435: dout = 32'h00000000;
			436: dout = 32'h00000000;
			437: dout = 32'h00000000;
			438: dout = 32'h00000000;
			439: dout = 32'h00000000;
			440: dout = 32'h00000000;
			441: dout = 32'h00000000;
			442: dout = 32'h00000000;
			443: dout = 32'h00000000;
			444: dout = 32'h00000000;
			445: dout = 32'h00000000;
			446: dout = 32'h00000000;
			447: dout = 32'h00000000;
			448: dout = 32'h001f0024;
			449: dout = 32'h00555555;
			450: dout = 32'h00aaaaab;
			451: dout = 32'h01000000;
			452: dout = 32'h00c00000;
			453: dout = 32'h00800000;
			454: dout = 32'h00400000;
			455: dout = 32'h00000000;
			456: dout = 32'h00000000;
			457: dout = 32'h00000000;
			458: dout = 32'h00000000;
			459: dout = 32'h00000000;
			460: dout = 32'h00000000;
			461: dout = 32'h00000000;
			462: dout = 32'h00000000;
			463: dout = 32'h00000000;
			464: dout = 32'h00000000;
			465: dout = 32'h00000000;
			466: dout = 32'h00000000;
			467: dout = 32'h00000000;
			468: dout = 32'h00000000;
			469: dout = 32'h00000000;
			470: dout = 32'h00000000;
			471: dout = 32'h00000000;
			472: dout = 32'h00000000;
			473: dout = 32'h00000000;
			474: dout = 32'h00000000;
			475: dout = 32'h00000000;
			476: dout = 32'h00000000;
			477: dout = 32'h00000000;
			478: dout = 32'h00000000;
			479: dout = 32'h00000000;
			480: dout = 32'h00220028;
			481: dout = 32'h00400000;
			482: dout = 32'h00800000;
			483: dout = 32'h00c00000;
			484: dout = 32'h01000000;
			485: dout = 32'h00c00000;
			486: dout = 32'h00800000;
			487: dout = 32'h00400000;
			488: dout = 32'h00000000;
			489: dout = 32'h00000000;
			490: dout = 32'h00000000;
			491: dout = 32'h00000000;
			492: dout = 32'h00000000;
			493: dout = 32'h00000000;
			494: dout = 32'h00000000;
			495: dout = 32'h00000000;
			496: dout = 32'h00000000;
			497: dout = 32'h00000000;
			498: dout = 32'h00000000;
			499: dout = 32'h00000000;
			500: dout = 32'h00000000;
			501: dout = 32'h00000000;
			502: dout = 32'h00000000;
			503: dout = 32'h00000000;
			504: dout = 32'h00000000;
			505: dout = 32'h00000000;
			506: dout = 32'h00000000;
			507: dout = 32'h00000000;
			508: dout = 32'h00000000;
			509: dout = 32'h00000000;
			510: dout = 32'h00000000;
			511: dout = 32'h00000000;
			512: dout = 32'h0026002c;
			513: dout = 32'h00400000;
			514: dout = 32'h00800000;
			515: dout = 32'h00c00000;
			516: dout = 32'h01000000;
			517: dout = 32'h00c00000;
			518: dout = 32'h00800000;
			519: dout = 32'h00400000;
			520: dout = 32'h00000000;
			521: dout = 32'h00000000;
			522: dout = 32'h00000000;
			523: dout = 32'h00000000;
			524: dout = 32'h00000000;
			525: dout = 32'h00000000;
			526: dout = 32'h00000000;
			527: dout = 32'h00000000;
			528: dout = 32'h00000000;
			529: dout = 32'h00000000;
			530: dout = 32'h00000000;
			531: dout = 32'h00000000;
			532: dout = 32'h00000000;
			533: dout = 32'h00000000;
			534: dout = 32'h00000000;
			535: dout = 32'h00000000;
			536: dout = 32'h00000000;
			537: dout = 32'h00000000;
			538: dout = 32'h00000000;
			539: dout = 32'h00000000;
			540: dout = 32'h00000000;
			541: dout = 32'h00000000;
			542: dout = 32'h00000000;
			543: dout = 32'h00000000;
			544: dout = 32'h002a0030;
			545: dout = 32'h00400000;
			546: dout = 32'h00800000;
			547: dout = 32'h00c00000;
			548: dout = 32'h01000000;
			549: dout = 32'h00c00000;
			550: dout = 32'h00800000;
			551: dout = 32'h00400000;
			552: dout = 32'h00000000;
			553: dout = 32'h00000000;
			554: dout = 32'h00000000;
			555: dout = 32'h00000000;
			556: dout = 32'h00000000;
			557: dout = 32'h00000000;
			558: dout = 32'h00000000;
			559: dout = 32'h00000000;
			560: dout = 32'h00000000;
			561: dout = 32'h00000000;
			562: dout = 32'h00000000;
			563: dout = 32'h00000000;
			564: dout = 32'h00000000;
			565: dout = 32'h00000000;
			566: dout = 32'h00000000;
			567: dout = 32'h00000000;
			568: dout = 32'h00000000;
			569: dout = 32'h00000000;
			570: dout = 32'h00000000;
			571: dout = 32'h00000000;
			572: dout = 32'h00000000;
			573: dout = 32'h00000000;
			574: dout = 32'h00000000;
			575: dout = 32'h00000000;
			576: dout = 32'h002e0035;
			577: dout = 32'h00400000;
			578: dout = 32'h00800000;
			579: dout = 32'h00c00000;
			580: dout = 32'h01000000;
			581: dout = 32'h00cccccd;
			582: dout = 32'h0099999a;
			583: dout = 32'h00666666;
			584: dout = 32'h00333333;
			585: dout = 32'h00000000;
			586: dout = 32'h00000000;
			587: dout = 32'h00000000;
			588: dout = 32'h00000000;
			589: dout = 32'h00000000;
			590: dout = 32'h00000000;
			591: dout = 32'h00000000;
			592: dout = 32'h00000000;
			593: dout = 32'h00000000;
			594: dout = 32'h00000000;
			595: dout = 32'h00000000;
			596: dout = 32'h00000000;
			597: dout = 32'h00000000;
			598: dout = 32'h00000000;
			599: dout = 32'h00000000;
			600: dout = 32'h00000000;
			601: dout = 32'h00000000;
			602: dout = 32'h00000000;
			603: dout = 32'h00000000;
			604: dout = 32'h00000000;
			605: dout = 32'h00000000;
			606: dout = 32'h00000000;
			607: dout = 32'h00000000;
			608: dout = 32'h0032003a;
			609: dout = 32'h00333333;
			610: dout = 32'h00666666;
			611: dout = 32'h0099999a;
			612: dout = 32'h00cccccd;
			613: dout = 32'h01000000;
			614: dout = 32'h00cccccd;
			615: dout = 32'h0099999a;
			616: dout = 32'h00666666;
			617: dout = 32'h00333333;
			618: dout = 32'h00000000;
			619: dout = 32'h00000000;
			620: dout = 32'h00000000;
			621: dout = 32'h00000000;
			622: dout = 32'h00000000;
			623: dout = 32'h00000000;
			624: dout = 32'h00000000;
			625: dout = 32'h00000000;
			626: dout = 32'h00000000;
			627: dout = 32'h00000000;
			628: dout = 32'h00000000;
			629: dout = 32'h00000000;
			630: dout = 32'h00000000;
			631: dout = 32'h00000000;
			632: dout = 32'h00000000;
			633: dout = 32'h00000000;
			634: dout = 32'h00000000;
			635: dout = 32'h00000000;
			636: dout = 32'h00000000;
			637: dout = 32'h00000000;
			638: dout = 32'h00000000;
			639: dout = 32'h00000000;
			640: dout = 32'h0037003f;
			641: dout = 32'h00333333;
			642: dout = 32'h00666666;
			643: dout = 32'h0099999a;
			644: dout = 32'h00cccccd;
			645: dout = 32'h01000000;
			646: dout = 32'h00cccccd;
			647: dout = 32'h0099999a;
			648: dout = 32'h00666666;
			649: dout = 32'h00333333;
			650: dout = 32'h00000000;
			651: dout = 32'h00000000;
			652: dout = 32'h00000000;
			653: dout = 32'h00000000;
			654: dout = 32'h00000000;
			655: dout = 32'h00000000;
			656: dout = 32'h00000000;
			657: dout = 32'h00000000;
			658: dout = 32'h00000000;
			659: dout = 32'h00000000;
			660: dout = 32'h00000000;
			661: dout = 32'h00000000;
			662: dout = 32'h00000000;
			663: dout = 32'h00000000;
			664: dout = 32'h00000000;
			665: dout = 32'h00000000;
			666: dout = 32'h00000000;
			667: dout = 32'h00000000;
			668: dout = 32'h00000000;
			669: dout = 32'h00000000;
			670: dout = 32'h00000000;
			671: dout = 32'h00000000;
			672: dout = 32'h003c0044;
			673: dout = 32'h00333333;
			674: dout = 32'h00666666;
			675: dout = 32'h0099999a;
			676: dout = 32'h00cccccd;
			677: dout = 32'h01000000;
			678: dout = 32'h00cccccd;
			679: dout = 32'h0099999a;
			680: dout = 32'h00666666;
			681: dout = 32'h00333333;
			682: dout = 32'h00000000;
			683: dout = 32'h00000000;
			684: dout = 32'h00000000;
			685: dout = 32'h00000000;
			686: dout = 32'h00000000;
			687: dout = 32'h00000000;
			688: dout = 32'h00000000;
			689: dout = 32'h00000000;
			690: dout = 32'h00000000;
			691: dout = 32'h00000000;
			692: dout = 32'h00000000;
			693: dout = 32'h00000000;
			694: dout = 32'h00000000;
			695: dout = 32'h00000000;
			696: dout = 32'h00000000;
			697: dout = 32'h00000000;
			698: dout = 32'h00000000;
			699: dout = 32'h00000000;
			700: dout = 32'h00000000;
			701: dout = 32'h00000000;
			702: dout = 32'h00000000;
			703: dout = 32'h00000000;
			704: dout = 32'h0041004a;
			705: dout = 32'h00333333;
			706: dout = 32'h00666666;
			707: dout = 32'h0099999a;
			708: dout = 32'h00cccccd;
			709: dout = 32'h01000000;
			710: dout = 32'h00d55555;
			711: dout = 32'h00aaaaab;
			712: dout = 32'h00800000;
			713: dout = 32'h00555555;
			714: dout = 32'h002aaaaa;
			715: dout = 32'h00000000;
			716: dout = 32'h00000000;
			717: dout = 32'h00000000;
			718: dout = 32'h00000000;
			719: dout = 32'h00000000;
			720: dout = 32'h00000000;
			721: dout = 32'h00000000;
			722: dout = 32'h00000000;
			723: dout = 32'h00000000;
			724: dout = 32'h00000000;
			725: dout = 32'h00000000;
			726: dout = 32'h00000000;
			727: dout = 32'h00000000;
			728: dout = 32'h00000000;
			729: dout = 32'h00000000;
			730: dout = 32'h00000000;
			731: dout = 32'h00000000;
			732: dout = 32'h00000000;
			733: dout = 32'h00000000;
			734: dout = 32'h00000000;
			735: dout = 32'h00000000;
			736: dout = 32'h00460050;
			737: dout = 32'h002aaaaa;
			738: dout = 32'h00555555;
			739: dout = 32'h00800000;
			740: dout = 32'h00aaaaab;
			741: dout = 32'h00d55555;
			742: dout = 32'h01000000;
			743: dout = 32'h00d55555;
			744: dout = 32'h00aaaaab;
			745: dout = 32'h00800000;
			746: dout = 32'h00555555;
			747: dout = 32'h002aaaaa;
			748: dout = 32'h00000000;
			749: dout = 32'h00000000;
			750: dout = 32'h00000000;
			751: dout = 32'h00000000;
			752: dout = 32'h00000000;
			753: dout = 32'h00000000;
			754: dout = 32'h00000000;
			755: dout = 32'h00000000;
			756: dout = 32'h00000000;
			757: dout = 32'h00000000;
			758: dout = 32'h00000000;
			759: dout = 32'h00000000;
			760: dout = 32'h00000000;
			761: dout = 32'h00000000;
			762: dout = 32'h00000000;
			763: dout = 32'h00000000;
			764: dout = 32'h00000000;
			765: dout = 32'h00000000;
			766: dout = 32'h00000000;
			767: dout = 32'h00000000;
			768: dout = 32'h004c0057;
			769: dout = 32'h002aaaaa;
			770: dout = 32'h00555555;
			771: dout = 32'h00800000;
			772: dout = 32'h00aaaaab;
			773: dout = 32'h00d55555;
			774: dout = 32'h01000000;
			775: dout = 32'h00db6db7;
			776: dout = 32'h00b6db6e;
			777: dout = 32'h00924925;
			778: dout = 32'h006db6db;
			779: dout = 32'h00492492;
			780: dout = 32'h00249249;
			781: dout = 32'h00000000;
			782: dout = 32'h00000000;
			783: dout = 32'h00000000;
			784: dout = 32'h00000000;
			785: dout = 32'h00000000;
			786: dout = 32'h00000000;
			787: dout = 32'h00000000;
			788: dout = 32'h00000000;
			789: dout = 32'h00000000;
			790: dout = 32'h00000000;
			791: dout = 32'h00000000;
			792: dout = 32'h00000000;
			793: dout = 32'h00000000;
			794: dout = 32'h00000000;
			795: dout = 32'h00000000;
			796: dout = 32'h00000000;
			797: dout = 32'h00000000;
			798: dout = 32'h00000000;
			799: dout = 32'h00000000;
			800: dout = 32'h0052005e;
			801: dout = 32'h00249249;
			802: dout = 32'h00492492;
			803: dout = 32'h006db6db;
			804: dout = 32'h00924925;
			805: dout = 32'h00b6db6e;
			806: dout = 32'h00db6db7;
			807: dout = 32'h01000000;
			808: dout = 32'h00db6db7;
			809: dout = 32'h00b6db6e;
			810: dout = 32'h00924925;
			811: dout = 32'h006db6db;
			812: dout = 32'h00492492;
			813: dout = 32'h00249249;
			814: dout = 32'h00000000;
			815: dout = 32'h00000000;
			816: dout = 32'h00000000;
			817: dout = 32'h00000000;
			818: dout = 32'h00000000;
			819: dout = 32'h00000000;
			820: dout = 32'h00000000;
			821: dout = 32'h00000000;
			822: dout = 32'h00000000;
			823: dout = 32'h00000000;
			824: dout = 32'h00000000;
			825: dout = 32'h00000000;
			826: dout = 32'h00000000;
			827: dout = 32'h00000000;
			828: dout = 32'h00000000;
			829: dout = 32'h00000000;
			830: dout = 32'h00000000;
			831: dout = 32'h00000000;
			832: dout = 32'h00590066;
			833: dout = 32'h00249249;
			834: dout = 32'h00492492;
			835: dout = 32'h006db6db;
			836: dout = 32'h00924925;
			837: dout = 32'h00b6db6e;
			838: dout = 32'h00db6db7;
			839: dout = 32'h01000000;
			840: dout = 32'h00e00000;
			841: dout = 32'h00c00000;
			842: dout = 32'h00a00000;
			843: dout = 32'h00800000;
			844: dout = 32'h00600000;
			845: dout = 32'h00400000;
			846: dout = 32'h00200000;
			847: dout = 32'h00000000;
			848: dout = 32'h00000000;
			849: dout = 32'h00000000;
			850: dout = 32'h00000000;
			851: dout = 32'h00000000;
			852: dout = 32'h00000000;
			853: dout = 32'h00000000;
			854: dout = 32'h00000000;
			855: dout = 32'h00000000;
			856: dout = 32'h00000000;
			857: dout = 32'h00000000;
			858: dout = 32'h00000000;
			859: dout = 32'h00000000;
			860: dout = 32'h00000000;
			861: dout = 32'h00000000;
			862: dout = 32'h00000000;
			863: dout = 32'h00000000;
			864: dout = 32'h0060006d;
			865: dout = 32'h00200000;
			866: dout = 32'h00400000;
			867: dout = 32'h00600000;
			868: dout = 32'h00800000;
			869: dout = 32'h00a00000;
			870: dout = 32'h00c00000;
			871: dout = 32'h00e00000;
			872: dout = 32'h01000000;
			873: dout = 32'h00db6db7;
			874: dout = 32'h00b6db6e;
			875: dout = 32'h00924925;
			876: dout = 32'h006db6db;
			877: dout = 32'h00492492;
			878: dout = 32'h00249249;
			879: dout = 32'h00000000;
			880: dout = 32'h00000000;
			881: dout = 32'h00000000;
			882: dout = 32'h00000000;
			883: dout = 32'h00000000;
			884: dout = 32'h00000000;
			885: dout = 32'h00000000;
			886: dout = 32'h00000000;
			887: dout = 32'h00000000;
			888: dout = 32'h00000000;
			889: dout = 32'h00000000;
			890: dout = 32'h00000000;
			891: dout = 32'h00000000;
			892: dout = 32'h00000000;
			893: dout = 32'h00000000;
			894: dout = 32'h00000000;
			895: dout = 32'h00000000;
			896: dout = 32'h00680076;
			897: dout = 32'h00249249;
			898: dout = 32'h00492492;
			899: dout = 32'h006db6db;
			900: dout = 32'h00924925;
			901: dout = 32'h00b6db6e;
			902: dout = 32'h00db6db7;
			903: dout = 32'h01000000;
			904: dout = 32'h00e38e39;
			905: dout = 32'h00c71c72;
			906: dout = 32'h00aaaaab;
			907: dout = 32'h008e38e4;
			908: dout = 32'h0071c71c;
			909: dout = 32'h00555555;
			910: dout = 32'h0038e38e;
			911: dout = 32'h001c71c7;
			912: dout = 32'h00000000;
			913: dout = 32'h00000000;
			914: dout = 32'h00000000;
			915: dout = 32'h00000000;
			916: dout = 32'h00000000;
			917: dout = 32'h00000000;
			918: dout = 32'h00000000;
			919: dout = 32'h00000000;
			920: dout = 32'h00000000;
			921: dout = 32'h00000000;
			922: dout = 32'h00000000;
			923: dout = 32'h00000000;
			924: dout = 32'h00000000;
			925: dout = 32'h00000000;
			926: dout = 32'h00000000;
			927: dout = 32'h00000000;
			928: dout = 32'h006f007f;
			929: dout = 32'h001c71c7;
			930: dout = 32'h0038e38e;
			931: dout = 32'h00555555;
			932: dout = 32'h0071c71c;
			933: dout = 32'h008e38e4;
			934: dout = 32'h00aaaaab;
			935: dout = 32'h00c71c72;
			936: dout = 32'h00e38e39;
			937: dout = 32'h01000000;
			938: dout = 32'h00e38e39;
			939: dout = 32'h00c71c72;
			940: dout = 32'h00aaaaab;
			941: dout = 32'h008e38e4;
			942: dout = 32'h0071c71c;
			943: dout = 32'h00555555;
			944: dout = 32'h0038e38e;
			945: dout = 32'h001c71c7;
			946: dout = 32'h00000000;
			947: dout = 32'h00000000;
			948: dout = 32'h00000000;
			949: dout = 32'h00000000;
			950: dout = 32'h00000000;
			951: dout = 32'h00000000;
			952: dout = 32'h00000000;
			953: dout = 32'h00000000;
			954: dout = 32'h00000000;
			955: dout = 32'h00000000;
			956: dout = 32'h00000000;
			957: dout = 32'h00000000;
			958: dout = 32'h00000000;
			959: dout = 32'h00000000;
			960: dout = 32'h00780088;
			961: dout = 32'h001c71c7;
			962: dout = 32'h0038e38e;
			963: dout = 32'h00555555;
			964: dout = 32'h0071c71c;
			965: dout = 32'h008e38e4;
			966: dout = 32'h00aaaaab;
			967: dout = 32'h00c71c72;
			968: dout = 32'h00e38e39;
			969: dout = 32'h01000000;
			970: dout = 32'h00e38e39;
			971: dout = 32'h00c71c72;
			972: dout = 32'h00aaaaab;
			973: dout = 32'h008e38e4;
			974: dout = 32'h0071c71c;
			975: dout = 32'h00555555;
			976: dout = 32'h0038e38e;
			977: dout = 32'h001c71c7;
			978: dout = 32'h00000000;
			979: dout = 32'h00000000;
			980: dout = 32'h00000000;
			981: dout = 32'h00000000;
			982: dout = 32'h00000000;
			983: dout = 32'h00000000;
			984: dout = 32'h00000000;
			985: dout = 32'h00000000;
			986: dout = 32'h00000000;
			987: dout = 32'h00000000;
			988: dout = 32'h00000000;
			989: dout = 32'h00000000;
			990: dout = 32'h00000000;
			991: dout = 32'h00000000;
			992: dout = 32'h00810093;
			993: dout = 32'h001c71c7;
			994: dout = 32'h0038e38e;
			995: dout = 32'h00555555;
			996: dout = 32'h0071c71c;
			997: dout = 32'h008e38e4;
			998: dout = 32'h00aaaaab;
			999: dout = 32'h00c71c72;
			1000: dout = 32'h00e38e39;
			1001: dout = 32'h01000000;
			1002: dout = 32'h00e8ba2f;
			1003: dout = 32'h00d1745d;
			1004: dout = 32'h00ba2e8c;
			1005: dout = 32'h00a2e8ba;
			1006: dout = 32'h008ba2e9;
			1007: dout = 32'h00745d17;
			1008: dout = 32'h005d1746;
			1009: dout = 32'h0045d174;
			1010: dout = 32'h002e8ba3;
			1011: dout = 32'h001745d1;
			1012: dout = 32'h00000000;
			1013: dout = 32'h00000000;
			1014: dout = 32'h00000000;
			1015: dout = 32'h00000000;
			1016: dout = 32'h00000000;
			1017: dout = 32'h00000000;
			1018: dout = 32'h00000000;
			1019: dout = 32'h00000000;
			1020: dout = 32'h00000000;
			1021: dout = 32'h00000000;
			1022: dout = 32'h00000000;
			1023: dout = 32'h00000000;
			1024: dout = 32'h008a009d;
			1025: dout = 32'h001745d1;
			1026: dout = 32'h002e8ba3;
			1027: dout = 32'h0045d174;
			1028: dout = 32'h005d1746;
			1029: dout = 32'h00745d17;
			1030: dout = 32'h008ba2e9;
			1031: dout = 32'h00a2e8ba;
			1032: dout = 32'h00ba2e8c;
			1033: dout = 32'h00d1745d;
			1034: dout = 32'h00e8ba2f;
			1035: dout = 32'h01000000;
			1036: dout = 32'h00e66666;
			1037: dout = 32'h00cccccd;
			1038: dout = 32'h00b33333;
			1039: dout = 32'h0099999a;
			1040: dout = 32'h00800000;
			1041: dout = 32'h00666666;
			1042: dout = 32'h004ccccd;
			1043: dout = 32'h00333333;
			1044: dout = 32'h00199999;
			1045: dout = 32'h00000000;
			1046: dout = 32'h00000000;
			1047: dout = 32'h00000000;
			1048: dout = 32'h00000000;
			1049: dout = 32'h00000000;
			1050: dout = 32'h00000000;
			1051: dout = 32'h00000000;
			1052: dout = 32'h00000000;
			1053: dout = 32'h00000000;
			1054: dout = 32'h00000000;
			1055: dout = 32'h00000000;
			1056: dout = 32'h009500a9;
			1057: dout = 32'h00199999;
			1058: dout = 32'h00333333;
			1059: dout = 32'h004ccccd;
			1060: dout = 32'h00666666;
			1061: dout = 32'h00800000;
			1062: dout = 32'h0099999a;
			1063: dout = 32'h00b33333;
			1064: dout = 32'h00cccccd;
			1065: dout = 32'h00e66666;
			1066: dout = 32'h01000000;
			1067: dout = 32'h00eaaaab;
			1068: dout = 32'h00d55555;
			1069: dout = 32'h00c00000;
			1070: dout = 32'h00aaaaab;
			1071: dout = 32'h00955555;
			1072: dout = 32'h00800000;
			1073: dout = 32'h006aaaaa;
			1074: dout = 32'h00555555;
			1075: dout = 32'h00400000;
			1076: dout = 32'h002aaaaa;
			1077: dout = 32'h00155555;
			1078: dout = 32'h00000000;
			1079: dout = 32'h00000000;
			1080: dout = 32'h00000000;
			1081: dout = 32'h00000000;
			1082: dout = 32'h00000000;
			1083: dout = 32'h00000000;
			1084: dout = 32'h00000000;
			1085: dout = 32'h00000000;
			1086: dout = 32'h00000000;
			1087: dout = 32'h00000000;
			1088: dout = 32'h009f00b5;
			1089: dout = 32'h00155555;
			1090: dout = 32'h002aaaaa;
			1091: dout = 32'h00400000;
			1092: dout = 32'h00555555;
			1093: dout = 32'h006aaaaa;
			1094: dout = 32'h00800000;
			1095: dout = 32'h00955555;
			1096: dout = 32'h00aaaaab;
			1097: dout = 32'h00c00000;
			1098: dout = 32'h00d55555;
			1099: dout = 32'h00eaaaab;
			1100: dout = 32'h01000000;
			1101: dout = 32'h00eaaaab;
			1102: dout = 32'h00d55555;
			1103: dout = 32'h00c00000;
			1104: dout = 32'h00aaaaab;
			1105: dout = 32'h00955555;
			1106: dout = 32'h00800000;
			1107: dout = 32'h006aaaaa;
			1108: dout = 32'h00555555;
			1109: dout = 32'h00400000;
			1110: dout = 32'h002aaaaa;
			1111: dout = 32'h00155555;
			1112: dout = 32'h00000000;
			1113: dout = 32'h00000000;
			1114: dout = 32'h00000000;
			1115: dout = 32'h00000000;
			1116: dout = 32'h00000000;
			1117: dout = 32'h00000000;
			1118: dout = 32'h00000000;
			1119: dout = 32'h00000000;
			1120: dout = 32'h00ab00c2;
			1121: dout = 32'h00155555;
			1122: dout = 32'h002aaaaa;
			1123: dout = 32'h00400000;
			1124: dout = 32'h00555555;
			1125: dout = 32'h006aaaaa;
			1126: dout = 32'h00800000;
			1127: dout = 32'h00955555;
			1128: dout = 32'h00aaaaab;
			1129: dout = 32'h00c00000;
			1130: dout = 32'h00d55555;
			1131: dout = 32'h00eaaaab;
			1132: dout = 32'h01000000;
			1133: dout = 32'h00ec4ec5;
			1134: dout = 32'h00d89d8a;
			1135: dout = 32'h00c4ec4f;
			1136: dout = 32'h00b13b14;
			1137: dout = 32'h009d89d9;
			1138: dout = 32'h0089d89e;
			1139: dout = 32'h00762762;
			1140: dout = 32'h00627627;
			1141: dout = 32'h004ec4ec;
			1142: dout = 32'h003b13b1;
			1143: dout = 32'h00276276;
			1144: dout = 32'h0013b13b;
			1145: dout = 32'h00000000;
			1146: dout = 32'h00000000;
			1147: dout = 32'h00000000;
			1148: dout = 32'h00000000;
			1149: dout = 32'h00000000;
			1150: dout = 32'h00000000;
			1151: dout = 32'h00000000;
			1152: dout = 32'h00b700d0;
			1153: dout = 32'h0013b13b;
			1154: dout = 32'h00276276;
			1155: dout = 32'h003b13b1;
			1156: dout = 32'h004ec4ec;
			1157: dout = 32'h00627627;
			1158: dout = 32'h00762762;
			1159: dout = 32'h0089d89e;
			1160: dout = 32'h009d89d9;
			1161: dout = 32'h00b13b14;
			1162: dout = 32'h00c4ec4f;
			1163: dout = 32'h00d89d8a;
			1164: dout = 32'h00ec4ec5;
			1165: dout = 32'h01000000;
			1166: dout = 32'h00edb6db;
			1167: dout = 32'h00db6db7;
			1168: dout = 32'h00c92492;
			1169: dout = 32'h00b6db6e;
			1170: dout = 32'h00a49249;
			1171: dout = 32'h00924925;
			1172: dout = 32'h00800000;
			1173: dout = 32'h006db6db;
			1174: dout = 32'h005b6db7;
			1175: dout = 32'h00492492;
			1176: dout = 32'h0036db6d;
			1177: dout = 32'h00249249;
			1178: dout = 32'h00124924;
			1179: dout = 32'h00000000;
			1180: dout = 32'h00000000;
			1181: dout = 32'h00000000;
			1182: dout = 32'h00000000;
			1183: dout = 32'h00000000;
			1184: dout = 32'h00c400df;
			1185: dout = 32'h00124924;
			1186: dout = 32'h00249249;
			1187: dout = 32'h0036db6d;
			1188: dout = 32'h00492492;
			1189: dout = 32'h005b6db7;
			1190: dout = 32'h006db6db;
			1191: dout = 32'h00800000;
			1192: dout = 32'h00924925;
			1193: dout = 32'h00a49249;
			1194: dout = 32'h00b6db6e;
			1195: dout = 32'h00c92492;
			1196: dout = 32'h00db6db7;
			1197: dout = 32'h00edb6db;
			1198: dout = 32'h01000000;
			1199: dout = 32'h00eeeeef;
			1200: dout = 32'h00ddddde;
			1201: dout = 32'h00cccccd;
			1202: dout = 32'h00bbbbbc;
			1203: dout = 32'h00aaaaab;
			1204: dout = 32'h0099999a;
			1205: dout = 32'h00888889;
			1206: dout = 32'h00777777;
			1207: dout = 32'h00666666;
			1208: dout = 32'h00555555;
			1209: dout = 32'h00444444;
			1210: dout = 32'h00333333;
			1211: dout = 32'h00222222;
			1212: dout = 32'h00111111;
			1213: dout = 32'h00000000;
			1214: dout = 32'h00000000;
			1215: dout = 32'h00000000;
			1216: dout = 32'h00d200ee;
			1217: dout = 32'h00111111;
			1218: dout = 32'h00222222;
			1219: dout = 32'h00333333;
			1220: dout = 32'h00444444;
			1221: dout = 32'h00555555;
			1222: dout = 32'h00666666;
			1223: dout = 32'h00777777;
			1224: dout = 32'h00888889;
			1225: dout = 32'h0099999a;
			1226: dout = 32'h00aaaaab;
			1227: dout = 32'h00bbbbbc;
			1228: dout = 32'h00cccccd;
			1229: dout = 32'h00ddddde;
			1230: dout = 32'h00eeeeef;
			1231: dout = 32'h01000000;
			1232: dout = 32'h00eeeeef;
			1233: dout = 32'h00ddddde;
			1234: dout = 32'h00cccccd;
			1235: dout = 32'h00bbbbbc;
			1236: dout = 32'h00aaaaab;
			1237: dout = 32'h0099999a;
			1238: dout = 32'h00888889;
			1239: dout = 32'h00777777;
			1240: dout = 32'h00666666;
			1241: dout = 32'h00555555;
			1242: dout = 32'h00444444;
			1243: dout = 32'h00333333;
			1244: dout = 32'h00222222;
			1245: dout = 32'h00111111;
			1246: dout = 32'h00000000;
			1247: dout = 32'h00000000;
			1248: dout = 32'h00e100ff;
			1249: dout = 32'h00111111;
			1250: dout = 32'h00222222;
			1251: dout = 32'h00333333;
			1252: dout = 32'h00444444;
			1253: dout = 32'h00555555;
			1254: dout = 32'h00666666;
			1255: dout = 32'h00777777;
			1256: dout = 32'h00888889;
			1257: dout = 32'h0099999a;
			1258: dout = 32'h00aaaaab;
			1259: dout = 32'h00bbbbbc;
			1260: dout = 32'h00cccccd;
			1261: dout = 32'h00ddddde;
			1262: dout = 32'h00eeeeef;
			1263: dout = 32'h01000000;
			1264: dout = 32'h00f0f0f1;
			1265: dout = 32'h00e1e1e2;
			1266: dout = 32'h00d2d2d3;
			1267: dout = 32'h00c3c3c4;
			1268: dout = 32'h00b4b4b5;
			1269: dout = 32'h00a5a5a6;
			1270: dout = 32'h00969697;
			1271: dout = 32'h00878788;
			1272: dout = 32'h00787878;
			1273: dout = 32'h00696969;
			1274: dout = 32'h005a5a5a;
			1275: dout = 32'h004b4b4b;
			1276: dout = 32'h003c3c3c;
			1277: dout = 32'h002d2d2d;
			1278: dout = 32'h001e1e1e;
			1279: dout = 32'h000f0f0f;
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
	parameter F_WIDTH = 24;
	parameter ALPHA = 16273899;
	parameter NUM_CEPS = 12;
	parameter NUM_MEL_FILTERS = 40;
	parameter FRAME_SIZE = 400;
	parameter FRAME_STEP = 160;
	parameter FFT_SIZE = 512;
	parameter NFFT_LOG2 = 9;
	parameter PCM_FIFO_DEPTH = 32;
	parameter MEL_BANK_SIZE = 32;
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
	input wire [7:0] addr;
	output reg [127:0] dout;
	always @(*) begin
		if (_sv2v_0)
			;
		case (addr)
			0: dout = 128'h00000000010000000000000000000000;
			1: dout = 128'h0000000000fffb11fffffffffffcdbc6;
			2: dout = 128'h0000000000ffec43fffffffffff9b7ab;
			3: dout = 128'h0000000000ffd397fffffffffff693ce;
			4: dout = 128'h0000000000ffb10ffffffffffff3704d;
			5: dout = 128'h0000000000ff84abfffffffffff04d49;
			6: dout = 128'h0000000000ff4e6dffffffffffed2ae0;
			7: dout = 128'h0000000000ff0e58ffffffffffea0930;
			8: dout = 128'h0000000000fec46dffffffffffe6e85a;
			9: dout = 128'h0000000000fe70b0ffffffffffe3c87b;
			10: dout = 128'h0000000000fe1324ffffffffffe0a9b2;
			11: dout = 128'h0000000000fdabccffffffffffdd8c1f;
			12: dout = 128'h0000000000fd3aacffffffffffda6fe0;
			13: dout = 128'h0000000000fcbfc9ffffffffffd75513;
			14: dout = 128'h0000000000fc3b28ffffffffffd43bd8;
			15: dout = 128'h0000000000fbaccdffffffffffd1244d;
			16: dout = 128'h0000000000fb14beffffffffffce0e90;
			17: dout = 128'h0000000000fa7302ffffffffffcafac0;
			18: dout = 128'h0000000000f9c79dffffffffffc7e8fc;
			19: dout = 128'h0000000000f91298ffffffffffc4d960;
			20: dout = 128'h0000000000f853f8ffffffffffc1cc0d;
			21: dout = 128'h0000000000f78bc5ffffffffffbec120;
			22: dout = 128'h0000000000f6ba07ffffffffffbbb8b7;
			23: dout = 128'h0000000000f5dec6ffffffffffb8b2ef;
			24: dout = 128'h0000000000f4fa0bffffffffffb5afe7;
			25: dout = 128'h0000000000f40bddffffffffffb2afbd;
			26: dout = 128'h0000000000f31447ffffffffffafb28e;
			27: dout = 128'h0000000000f21352ffffffffffacb877;
			28: dout = 128'h0000000000f10908ffffffffffa9c197;
			29: dout = 128'h0000000000eff573ffffffffffa6ce09;
			30: dout = 128'h0000000000eed89effffffffffa3ddeb;
			31: dout = 128'h0000000000edb293ffffffffffa0f15b;
			32: dout = 128'h0000000000ec835effffffffff9e0875;
			33: dout = 128'h0000000000eb4b0cffffffffff9b2357;
			34: dout = 128'h0000000000ea09a7ffffffffff98421b;
			35: dout = 128'h0000000000e8bf3cffffffffff9564e0;
			36: dout = 128'h0000000000e76bd8ffffffffff928bc0;
			37: dout = 128'h0000000000e60f88ffffffffff8fb6d9;
			38: dout = 128'h0000000000e4aa59ffffffffff8ce646;
			39: dout = 128'h0000000000e33c5affffffffff8a1a23;
			40: dout = 128'h0000000000e1c598ffffffffff87528c;
			41: dout = 128'h0000000000e04621ffffffffff848f9b;
			42: dout = 128'h0000000000debe06ffffffffff81d16d;
			43: dout = 128'h0000000000dd2d53ffffffffff7f181c;
			44: dout = 128'h0000000000db941affffffffff7c63c4;
			45: dout = 128'h0000000000d9f26affffffffff79b47d;
			46: dout = 128'h0000000000d84853ffffffffff770a66;
			47: dout = 128'h0000000000d695e5ffffffffff746595;
			48: dout = 128'h0000000000d4db31ffffffffff71c626;
			49: dout = 128'h0000000000d31849ffffffffff6f2c34;
			50: dout = 128'h0000000000d14d3dffffffffff6c97d5;
			51: dout = 128'h0000000000cf7a20ffffffffff6a0927;
			52: dout = 128'h0000000000cd9f02ffffffffff678040;
			53: dout = 128'h0000000000cbbbf8ffffffffff64fd3b;
			54: dout = 128'h0000000000c9d113ffffffffff62802f;
			55: dout = 128'h0000000000c7de65ffffffffff600935;
			56: dout = 128'h0000000000c5e404ffffffffff5d9867;
			57: dout = 128'h0000000000c3e200ffffffffff5b2ddb;
			58: dout = 128'h0000000000c1d870ffffffffff58c9aa;
			59: dout = 128'h0000000000bfc767ffffffffff566beb;
			60: dout = 128'h0000000000bdaef9ffffffffff5414b6;
			61: dout = 128'h0000000000bb8f3bffffffffff51c422;
			62: dout = 128'h0000000000b96842ffffffffff4f7a45;
			63: dout = 128'h0000000000b73a23ffffffffff4d3737;
			64: dout = 128'h0000000000b504f3ffffffffff4afb0d;
			65: dout = 128'h0000000000b2c8c9ffffffffff48c5dd;
			66: dout = 128'h0000000000b085bbffffffffff4697bf;
			67: dout = 128'h0000000000ae3bdeffffffffff4470c5;
			68: dout = 128'h0000000000abeb4affffffffff425107;
			69: dout = 128'h0000000000a99414ffffffffff403899;
			70: dout = 128'h0000000000a73656ffffffffff3e2790;
			71: dout = 128'h0000000000a4d225ffffffffff3c1dff;
			72: dout = 128'h0000000000a26799ffffffffff3a1bfd;
			73: dout = 128'h00000000009ff6cbffffffffff38219b;
			74: dout = 128'h00000000009d7fd1ffffffffff362eee;
			75: dout = 128'h00000000009b02c6ffffffffff344408;
			76: dout = 128'h0000000000987fc0ffffffffff3260fe;
			77: dout = 128'h000000000095f6d9ffffffffff3085e1;
			78: dout = 128'h000000000093682bffffffffff2eb2c3;
			79: dout = 128'h000000000090d3cdffffffffff2ce7b7;
			80: dout = 128'h00000000008e39daffffffffff2b24cf;
			81: dout = 128'h00000000008b9a6bffffffffff296a1b;
			82: dout = 128'h000000000088f59bffffffffff27b7ad;
			83: dout = 128'h0000000000864b82ffffffffff260d96;
			84: dout = 128'h0000000000839c3effffffffff246be6;
			85: dout = 128'h000000000080e7e5ffffffffff22d2ad;
			86: dout = 128'h00000000007e2e93ffffffffff2141fb;
			87: dout = 128'h00000000007b7064ffffffffff1fb9de;
			88: dout = 128'h000000000078ad75ffffffffff1e3a69;
			89: dout = 128'h000000000075e5ddffffffffff1cc3a6;
			90: dout = 128'h00000000007319baffffffffff1b55a7;
			91: dout = 128'h0000000000704928ffffffffff19f079;
			92: dout = 128'h00000000006d7440ffffffffff189428;
			93: dout = 128'h00000000006a9b20ffffffffff1740c4;
			94: dout = 128'h000000000067bde4ffffffffff15f659;
			95: dout = 128'h000000000064dcaaffffffffff14b4f5;
			96: dout = 128'h000000000061f78affffffffff137ca2;
			97: dout = 128'h00000000005f0ea4ffffffffff124d6d;
			98: dout = 128'h00000000005c2215ffffffffff112763;
			99: dout = 128'h00000000005931f7ffffffffff100a8d;
			100: dout = 128'h0000000000563e69ffffffffff0ef6f8;
			101: dout = 128'h0000000000534788ffffffffff0decad;
			102: dout = 128'h0000000000504d73ffffffffff0cebb9;
			103: dout = 128'h00000000004d5043ffffffffff0bf423;
			104: dout = 128'h00000000004a5018ffffffffff0b05f5;
			105: dout = 128'h0000000000474d11ffffffffff0a213a;
			106: dout = 128'h0000000000444749ffffffffff0945f9;
			107: dout = 128'h0000000000413ee0ffffffffff08743b;
			108: dout = 128'h00000000003e33f4ffffffffff07ac08;
			109: dout = 128'h00000000003b26a0ffffffffff06ed68;
			110: dout = 128'h0000000000381704ffffffffff063863;
			111: dout = 128'h000000000035053fffffffffff058cfe;
			112: dout = 128'h000000000031f171ffffffffff04eb42;
			113: dout = 128'h00000000002edbb3ffffffffff045333;
			114: dout = 128'h00000000002bc428ffffffffff03c4d8;
			115: dout = 128'h000000000028aaeeffffffffff034037;
			116: dout = 128'h0000000000259021ffffffffff02c554;
			117: dout = 128'h00000000002273e1ffffffffff025434;
			118: dout = 128'h00000000001f564dffffffffff01ecdc;
			119: dout = 128'h00000000001c3786ffffffffff018f50;
			120: dout = 128'h00000000001917a6ffffffffff013b93;
			121: dout = 128'h000000000015f6cfffffffffff00f1a8;
			122: dout = 128'h000000000012d521ffffffffff00b193;
			123: dout = 128'h00000000000fb2b7ffffffffff007b55;
			124: dout = 128'h00000000000c8fb2ffffffffff004ef1;
			125: dout = 128'h0000000000096c31ffffffffff002c68;
			126: dout = 128'h0000000000064855ffffffffff0013bd;
			127: dout = 128'h000000000003243affffffffff0004ef;
			128: dout = 128'h0000000000000000ffffffffff000000;
			129: dout = 128'hfffffffffffcdbc7ffffffffff0004ef;
			130: dout = 128'hfffffffffff9b7abffffffffff0013bd;
			131: dout = 128'hfffffffffff693cdffffffffff002c69;
			132: dout = 128'hfffffffffff3704effffffffff004ef1;
			133: dout = 128'hfffffffffff04d4affffffffff007b55;
			134: dout = 128'hffffffffffed2ae0ffffffffff00b193;
			135: dout = 128'hffffffffffea0930ffffffffff00f1a8;
			136: dout = 128'hffffffffffe6e85affffffffff013b93;
			137: dout = 128'hffffffffffe3c87bffffffffff018f50;
			138: dout = 128'hffffffffffe0a9b2ffffffffff01ecdd;
			139: dout = 128'hffffffffffdd8c20ffffffffff025434;
			140: dout = 128'hffffffffffda6fe0ffffffffff02c554;
			141: dout = 128'hffffffffffd75513ffffffffff034037;
			142: dout = 128'hffffffffffd43bd7ffffffffff03c4d8;
			143: dout = 128'hffffffffffd1244dffffffffff045333;
			144: dout = 128'hffffffffffce0e90ffffffffff04eb42;
			145: dout = 128'hffffffffffcafabfffffffffff058cfe;
			146: dout = 128'hffffffffffc7e8fcffffffffff063862;
			147: dout = 128'hffffffffffc4d961ffffffffff06ed68;
			148: dout = 128'hffffffffffc1cc0dffffffffff07ac08;
			149: dout = 128'hffffffffffbec11fffffffffff08743b;
			150: dout = 128'hffffffffffbbb8b7ffffffffff0945f9;
			151: dout = 128'hffffffffffb8b2efffffffffff0a213a;
			152: dout = 128'hffffffffffb5afe7ffffffffff0b05f6;
			153: dout = 128'hffffffffffb2afbeffffffffff0bf422;
			154: dout = 128'hffffffffffafb28effffffffff0cebb9;
			155: dout = 128'hffffffffffacb877ffffffffff0decae;
			156: dout = 128'hffffffffffa9c197ffffffffff0ef6f8;
			157: dout = 128'hffffffffffa6ce09ffffffffff100a8d;
			158: dout = 128'hffffffffffa3ddebffffffffff112762;
			159: dout = 128'hffffffffffa0f15bffffffffff124d6d;
			160: dout = 128'hffffffffff9e0876ffffffffff137ca1;
			161: dout = 128'hffffffffff9b2357ffffffffff14b4f4;
			162: dout = 128'hffffffffff98421bffffffffff15f65a;
			163: dout = 128'hffffffffff9564e0ffffffffff1740c4;
			164: dout = 128'hffffffffff928bc0ffffffffff189428;
			165: dout = 128'hffffffffff8fb6d9ffffffffff19f079;
			166: dout = 128'hffffffffff8ce645ffffffffff1b55a7;
			167: dout = 128'hffffffffff8a1a22ffffffffff1cc3a7;
			168: dout = 128'hffffffffff87528dffffffffff1e3a68;
			169: dout = 128'hffffffffff848f9cffffffffff1fb9de;
			170: dout = 128'hffffffffff81d16dffffffffff2141fa;
			171: dout = 128'hffffffffff7f181cffffffffff22d2ad;
			172: dout = 128'hffffffffff7c63c3ffffffffff246be6;
			173: dout = 128'hffffffffff79b47dffffffffff260d97;
			174: dout = 128'hffffffffff770a64ffffffffff27b7ae;
			175: dout = 128'hffffffffff746596ffffffffff296a1a;
			176: dout = 128'hffffffffff71c627ffffffffff2b24ce;
			177: dout = 128'hffffffffff6f2c34ffffffffff2ce7b7;
			178: dout = 128'hffffffffff6c97d6ffffffffff2eb2c3;
			179: dout = 128'hffffffffff6a0926ffffffffff3085e1;
			180: dout = 128'hffffffffff67803fffffffffff3260fe;
			181: dout = 128'hffffffffff64fd39ffffffffff344409;
			182: dout = 128'hffffffffff628030ffffffffff362eed;
			183: dout = 128'hffffffffff600936ffffffffff38219a;
			184: dout = 128'hffffffffff5d9867ffffffffff3a1bfc;
			185: dout = 128'hffffffffff5b2ddbffffffffff3c1e00;
			186: dout = 128'hffffffffff58c9aaffffffffff3e2790;
			187: dout = 128'hffffffffff566beaffffffffff40389a;
			188: dout = 128'hffffffffff5414b5ffffffffff425108;
			189: dout = 128'hffffffffff51c423ffffffffff4470c4;
			190: dout = 128'hffffffffff4f7a46ffffffffff4697be;
			191: dout = 128'hffffffffff4d3737ffffffffff48c5dd;
			192: dout = 128'hffffffffff4afb0dffffffffff4afb0d;
			193: dout = 128'hffffffffff48c5ddffffffffff4d3737;
			194: dout = 128'hffffffffff4697bdffffffffff4f7a46;
			195: dout = 128'hffffffffff4470c4ffffffffff51c423;
			196: dout = 128'hffffffffff425108ffffffffff5414b5;
			197: dout = 128'hffffffffff40389affffffffff566beb;
			198: dout = 128'hffffffffff3e2790ffffffffff58c9aa;
			199: dout = 128'hffffffffff3c1dffffffffffff5b2ddb;
			200: dout = 128'hffffffffff3a1bfcffffffffff5d9867;
			201: dout = 128'hffffffffff38219affffffffff600936;
			202: dout = 128'hffffffffff362eedffffffffff628030;
			203: dout = 128'hffffffffff344409ffffffffff64fd39;
			204: dout = 128'hffffffffff3260feffffffffff67803f;
			205: dout = 128'hffffffffff3085e1ffffffffff6a0927;
			206: dout = 128'hffffffffff2eb2c3ffffffffff6c97d6;
			207: dout = 128'hffffffffff2ce7b7ffffffffff6f2c34;
			208: dout = 128'hffffffffff2b24ceffffffffff71c627;
			209: dout = 128'hffffffffff296a1cffffffffff746593;
			210: dout = 128'hffffffffff27b7aeffffffffff770a64;
			211: dout = 128'hffffffffff260d96ffffffffff79b47d;
			212: dout = 128'hffffffffff246be6ffffffffff7c63c3;
			213: dout = 128'hffffffffff22d2adffffffffff7f181c;
			214: dout = 128'hffffffffff2141faffffffffff81d16e;
			215: dout = 128'hffffffffff1fb9deffffffffff848f9c;
			216: dout = 128'hffffffffff1e3a69ffffffffff87528a;
			217: dout = 128'hffffffffff1cc3a7ffffffffff8a1a22;
			218: dout = 128'hffffffffff1b55a7ffffffffff8ce645;
			219: dout = 128'hffffffffff19f078ffffffffff8fb6d9;
			220: dout = 128'hffffffffff189428ffffffffff928bc1;
			221: dout = 128'hffffffffff1740c4ffffffffff9564e1;
			222: dout = 128'hffffffffff15f659ffffffffff98421d;
			223: dout = 128'hffffffffff14b4f5ffffffffff9b2355;
			224: dout = 128'hffffffffff137ca2ffffffffff9e0875;
			225: dout = 128'hffffffffff124d6dffffffffffa0f15b;
			226: dout = 128'hffffffffff112762ffffffffffa3ddeb;
			227: dout = 128'hffffffffff100a8dffffffffffa6ce09;
			228: dout = 128'hffffffffff0ef6f7ffffffffffa9c197;
			229: dout = 128'hffffffffff0decadffffffffffacb879;
			230: dout = 128'hffffffffff0cebb9ffffffffffafb28c;
			231: dout = 128'hffffffffff0bf423ffffffffffb2afbc;
			232: dout = 128'hffffffffff0b05f5ffffffffffb5afe7;
			233: dout = 128'hffffffffff0a213affffffffffb8b2ef;
			234: dout = 128'hffffffffff0945f9ffffffffffbbb8b7;
			235: dout = 128'hffffffffff08743bffffffffffbec121;
			236: dout = 128'hffffffffff07ac08ffffffffffc1cc0f;
			237: dout = 128'hffffffffff06ed69ffffffffffc4d95f;
			238: dout = 128'hffffffffff063863ffffffffffc7e8fb;
			239: dout = 128'hffffffffff058cfeffffffffffcafac0;
			240: dout = 128'hffffffffff04eb41ffffffffffce0e90;
			241: dout = 128'hffffffffff045333ffffffffffd1244d;
			242: dout = 128'hffffffffff03c4d8ffffffffffd43bd9;
			243: dout = 128'hffffffffff034037ffffffffffd75515;
			244: dout = 128'hffffffffff02c554ffffffffffda6fde;
			245: dout = 128'hffffffffff025435ffffffffffdd8c1e;
			246: dout = 128'hffffffffff01ecddffffffffffe0a9b2;
			247: dout = 128'hffffffffff018f50ffffffffffe3c87b;
			248: dout = 128'hffffffffff013b93ffffffffffe6e85a;
			249: dout = 128'hffffffffff00f1a8ffffffffffea0932;
			250: dout = 128'hffffffffff00b192ffffffffffed2ae2;
			251: dout = 128'hffffffffff007b55fffffffffff04d48;
			252: dout = 128'hffffffffff004ef1fffffffffff3704d;
			253: dout = 128'hffffffffff002c69fffffffffff693cd;
			254: dout = 128'hffffffffff0013bdfffffffffff9b7ab;
			255: dout = 128'hffffffffff0004effffffffffffcdbc7;
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
