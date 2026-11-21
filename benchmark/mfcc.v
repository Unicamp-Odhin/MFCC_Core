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
			0: dout = 32'h00010000;
			1: dout = 32'h00010000;
			2: dout = 32'h00010000;
			3: dout = 32'h00010000;
			4: dout = 32'h00010000;
			5: dout = 32'h00010000;
			6: dout = 32'h00010000;
			7: dout = 32'h00010000;
			8: dout = 32'h00010000;
			9: dout = 32'h00010000;
			10: dout = 32'h00010000;
			11: dout = 32'h00010000;
			12: dout = 32'h00010000;
			13: dout = 32'h00010000;
			14: dout = 32'h00010000;
			15: dout = 32'h00010000;
			16: dout = 32'h00010000;
			17: dout = 32'h00010000;
			18: dout = 32'h00010000;
			19: dout = 32'h00010000;
			20: dout = 32'h00010000;
			21: dout = 32'h00010000;
			22: dout = 32'h00010000;
			23: dout = 32'h00010000;
			24: dout = 32'h00010000;
			25: dout = 32'h00010000;
			26: dout = 32'h00010000;
			27: dout = 32'h00010000;
			28: dout = 32'h00010000;
			29: dout = 32'h00010000;
			30: dout = 32'h00010000;
			31: dout = 32'h00010000;
			32: dout = 32'h00010000;
			33: dout = 32'h00010000;
			34: dout = 32'h00010000;
			35: dout = 32'h00010000;
			36: dout = 32'h00010000;
			37: dout = 32'h00010000;
			38: dout = 32'h00010000;
			39: dout = 32'h00010000;
			40: dout = 32'h0000ffcd;
			41: dout = 32'h0000fe39;
			42: dout = 32'h0000fb14;
			43: dout = 32'h0000f663;
			44: dout = 32'h0000f02d;
			45: dout = 32'h0000e87c;
			46: dout = 32'h0000df5b;
			47: dout = 32'h0000d4db;
			48: dout = 32'h0000c90a;
			49: dout = 32'h0000bbfc;
			50: dout = 32'h0000adc5;
			51: dout = 32'h00009e7c;
			52: dout = 32'h00008e39;
			53: dout = 32'h00007d16;
			54: dout = 32'h00006b2d;
			55: dout = 32'h0000589b;
			56: dout = 32'h0000457d;
			57: dout = 32'h000031f1;
			58: dout = 32'h00001e16;
			59: dout = 32'h00000a0c;
			60: dout = 32'hfffff5f4;
			61: dout = 32'hffffe1ea;
			62: dout = 32'hffffce0f;
			63: dout = 32'hffffba83;
			64: dout = 32'hffffa765;
			65: dout = 32'hffff94d3;
			66: dout = 32'hffff82ea;
			67: dout = 32'hffff71c7;
			68: dout = 32'hffff6184;
			69: dout = 32'hffff523b;
			70: dout = 32'hffff4404;
			71: dout = 32'hffff36f6;
			72: dout = 32'hffff2b25;
			73: dout = 32'hffff20a5;
			74: dout = 32'hffff1784;
			75: dout = 32'hffff0fd3;
			76: dout = 32'hffff099d;
			77: dout = 32'hffff04ec;
			78: dout = 32'hffff01c7;
			79: dout = 32'hffff0033;
			80: dout = 32'h0000ff35;
			81: dout = 32'h0000f8ed;
			82: dout = 32'h0000ec83;
			83: dout = 32'h0000da46;
			84: dout = 32'h0000c2a9;
			85: dout = 32'h0000a642;
			86: dout = 32'h000085c2;
			87: dout = 32'h000061f7;
			88: dout = 32'h00003bc3;
			89: dout = 32'h00001415;
			90: dout = 32'hffffebeb;
			91: dout = 32'hffffc43d;
			92: dout = 32'hffff9e09;
			93: dout = 32'hffff7a3e;
			94: dout = 32'hffff59be;
			95: dout = 32'hffff3d57;
			96: dout = 32'hffff25ba;
			97: dout = 32'hffff137d;
			98: dout = 32'hffff0713;
			99: dout = 32'hffff00cb;
			100: dout = 32'hffff00cb;
			101: dout = 32'hffff0713;
			102: dout = 32'hffff137d;
			103: dout = 32'hffff25ba;
			104: dout = 32'hffff3d57;
			105: dout = 32'hffff59be;
			106: dout = 32'hffff7a3e;
			107: dout = 32'hffff9e09;
			108: dout = 32'hffffc43d;
			109: dout = 32'hffffebeb;
			110: dout = 32'h00001415;
			111: dout = 32'h00003bc3;
			112: dout = 32'h000061f7;
			113: dout = 32'h000085c2;
			114: dout = 32'h0000a642;
			115: dout = 32'h0000c2a9;
			116: dout = 32'h0000da46;
			117: dout = 32'h0000ec83;
			118: dout = 32'h0000f8ed;
			119: dout = 32'h0000ff35;
			120: dout = 32'h0000fe39;
			121: dout = 32'h0000f02d;
			122: dout = 32'h0000d4db;
			123: dout = 32'h0000adc5;
			124: dout = 32'h00007d16;
			125: dout = 32'h0000457d;
			126: dout = 32'h00000a0c;
			127: dout = 32'hffffce0f;
			128: dout = 32'hffff94d3;
			129: dout = 32'hffff6184;
			130: dout = 32'hffff36f6;
			131: dout = 32'hffff1784;
			132: dout = 32'hffff04ec;
			133: dout = 32'hffff0033;
			134: dout = 32'hffff099d;
			135: dout = 32'hffff20a5;
			136: dout = 32'hffff4404;
			137: dout = 32'hffff71c7;
			138: dout = 32'hffffa765;
			139: dout = 32'hffffe1ea;
			140: dout = 32'h00001e16;
			141: dout = 32'h0000589b;
			142: dout = 32'h00008e39;
			143: dout = 32'h0000bbfc;
			144: dout = 32'h0000df5b;
			145: dout = 32'h0000f663;
			146: dout = 32'h0000ffcd;
			147: dout = 32'h0000fb14;
			148: dout = 32'h0000e87c;
			149: dout = 32'h0000c90a;
			150: dout = 32'h00009e7c;
			151: dout = 32'h00006b2d;
			152: dout = 32'h000031f1;
			153: dout = 32'hfffff5f4;
			154: dout = 32'hffffba83;
			155: dout = 32'hffff82ea;
			156: dout = 32'hffff523b;
			157: dout = 32'hffff2b25;
			158: dout = 32'hffff0fd3;
			159: dout = 32'hffff01c7;
			160: dout = 32'h0000fcd9;
			161: dout = 32'h0000e419;
			162: dout = 32'h0000b504;
			163: dout = 32'h00007438;
			164: dout = 32'h0000280c;
			165: dout = 32'hffffd7f4;
			166: dout = 32'hffff8bc8;
			167: dout = 32'hffff4afc;
			168: dout = 32'hffff1be7;
			169: dout = 32'hffff0327;
			170: dout = 32'hffff0327;
			171: dout = 32'hffff1be7;
			172: dout = 32'hffff4afc;
			173: dout = 32'hffff8bc8;
			174: dout = 32'hffffd7f4;
			175: dout = 32'h0000280c;
			176: dout = 32'h00007438;
			177: dout = 32'h0000b504;
			178: dout = 32'h0000e419;
			179: dout = 32'h0000fcd9;
			180: dout = 32'h0000fcd9;
			181: dout = 32'h0000e419;
			182: dout = 32'h0000b504;
			183: dout = 32'h00007438;
			184: dout = 32'h0000280c;
			185: dout = 32'hffffd7f4;
			186: dout = 32'hffff8bc8;
			187: dout = 32'hffff4afc;
			188: dout = 32'hffff1be7;
			189: dout = 32'hffff0327;
			190: dout = 32'hffff0327;
			191: dout = 32'hffff1be7;
			192: dout = 32'hffff4afc;
			193: dout = 32'hffff8bc8;
			194: dout = 32'hffffd7f4;
			195: dout = 32'h0000280c;
			196: dout = 32'h00007438;
			197: dout = 32'h0000b504;
			198: dout = 32'h0000e419;
			199: dout = 32'h0000fcd9;
			200: dout = 32'h0000fb14;
			201: dout = 32'h0000d4db;
			202: dout = 32'h00008e39;
			203: dout = 32'h000031f1;
			204: dout = 32'hffffce0f;
			205: dout = 32'hffff71c7;
			206: dout = 32'hffff2b25;
			207: dout = 32'hffff04ec;
			208: dout = 32'hffff04ec;
			209: dout = 32'hffff2b25;
			210: dout = 32'hffff71c7;
			211: dout = 32'hffffce0f;
			212: dout = 32'h000031f1;
			213: dout = 32'h00008e39;
			214: dout = 32'h0000d4db;
			215: dout = 32'h0000fb14;
			216: dout = 32'h0000fb14;
			217: dout = 32'h0000d4db;
			218: dout = 32'h00008e39;
			219: dout = 32'h000031f1;
			220: dout = 32'hffffce0f;
			221: dout = 32'hffff71c7;
			222: dout = 32'hffff2b25;
			223: dout = 32'hffff04ec;
			224: dout = 32'hffff04ec;
			225: dout = 32'hffff2b25;
			226: dout = 32'hffff71c7;
			227: dout = 32'hffffce0f;
			228: dout = 32'h000031f1;
			229: dout = 32'h00008e39;
			230: dout = 32'h0000d4db;
			231: dout = 32'h0000fb14;
			232: dout = 32'h0000fb14;
			233: dout = 32'h0000d4db;
			234: dout = 32'h00008e39;
			235: dout = 32'h000031f1;
			236: dout = 32'hffffce0f;
			237: dout = 32'hffff71c7;
			238: dout = 32'hffff2b25;
			239: dout = 32'hffff04ec;
			240: dout = 32'h0000f8ed;
			241: dout = 32'h0000c2a9;
			242: dout = 32'h000061f7;
			243: dout = 32'hffffebeb;
			244: dout = 32'hffff7a3e;
			245: dout = 32'hffff25ba;
			246: dout = 32'hffff00cb;
			247: dout = 32'hffff137d;
			248: dout = 32'hffff59be;
			249: dout = 32'hffffc43d;
			250: dout = 32'h00003bc3;
			251: dout = 32'h0000a642;
			252: dout = 32'h0000ec83;
			253: dout = 32'h0000ff35;
			254: dout = 32'h0000da46;
			255: dout = 32'h000085c2;
			256: dout = 32'h00001415;
			257: dout = 32'hffff9e09;
			258: dout = 32'hffff3d57;
			259: dout = 32'hffff0713;
			260: dout = 32'hffff0713;
			261: dout = 32'hffff3d57;
			262: dout = 32'hffff9e09;
			263: dout = 32'h00001415;
			264: dout = 32'h000085c2;
			265: dout = 32'h0000da46;
			266: dout = 32'h0000ff35;
			267: dout = 32'h0000ec83;
			268: dout = 32'h0000a642;
			269: dout = 32'h00003bc3;
			270: dout = 32'hffffc43d;
			271: dout = 32'hffff59be;
			272: dout = 32'hffff137d;
			273: dout = 32'hffff00cb;
			274: dout = 32'hffff25ba;
			275: dout = 32'hffff7a3e;
			276: dout = 32'hffffebeb;
			277: dout = 32'h000061f7;
			278: dout = 32'h0000c2a9;
			279: dout = 32'h0000f8ed;
			280: dout = 32'h0000f663;
			281: dout = 32'h0000adc5;
			282: dout = 32'h000031f1;
			283: dout = 32'hffffa765;
			284: dout = 32'hffff36f6;
			285: dout = 32'hffff01c7;
			286: dout = 32'hffff1784;
			287: dout = 32'hffff71c7;
			288: dout = 32'hfffff5f4;
			289: dout = 32'h00007d16;
			290: dout = 32'h0000df5b;
			291: dout = 32'h0000ffcd;
			292: dout = 32'h0000d4db;
			293: dout = 32'h00006b2d;
			294: dout = 32'hffffe1ea;
			295: dout = 32'hffff6184;
			296: dout = 32'hffff0fd3;
			297: dout = 32'hffff04ec;
			298: dout = 32'hffff4404;
			299: dout = 32'hffffba83;
			300: dout = 32'h0000457d;
			301: dout = 32'h0000bbfc;
			302: dout = 32'h0000fb14;
			303: dout = 32'h0000f02d;
			304: dout = 32'h00009e7c;
			305: dout = 32'h00001e16;
			306: dout = 32'hffff94d3;
			307: dout = 32'hffff2b25;
			308: dout = 32'hffff0033;
			309: dout = 32'hffff20a5;
			310: dout = 32'hffff82ea;
			311: dout = 32'h00000a0c;
			312: dout = 32'h00008e39;
			313: dout = 32'h0000e87c;
			314: dout = 32'h0000fe39;
			315: dout = 32'h0000c90a;
			316: dout = 32'h0000589b;
			317: dout = 32'hffffce0f;
			318: dout = 32'hffff523b;
			319: dout = 32'hffff099d;
			320: dout = 32'h0000f378;
			321: dout = 32'h00009679;
			322: dout = 32'h00000000;
			323: dout = 32'hffff6987;
			324: dout = 32'hffff0c88;
			325: dout = 32'hffff0c88;
			326: dout = 32'hffff6987;
			327: dout = 32'h00000000;
			328: dout = 32'h00009679;
			329: dout = 32'h0000f378;
			330: dout = 32'h0000f378;
			331: dout = 32'h00009679;
			332: dout = 32'h00000000;
			333: dout = 32'hffff6987;
			334: dout = 32'hffff0c88;
			335: dout = 32'hffff0c88;
			336: dout = 32'hffff6987;
			337: dout = 32'h00000000;
			338: dout = 32'h00009679;
			339: dout = 32'h0000f378;
			340: dout = 32'h0000f378;
			341: dout = 32'h00009679;
			342: dout = 32'h00000000;
			343: dout = 32'hffff6987;
			344: dout = 32'hffff0c88;
			345: dout = 32'hffff0c88;
			346: dout = 32'hffff6987;
			347: dout = 32'h00000000;
			348: dout = 32'h00009679;
			349: dout = 32'h0000f378;
			350: dout = 32'h0000f378;
			351: dout = 32'h00009679;
			352: dout = 32'h00000000;
			353: dout = 32'hffff6987;
			354: dout = 32'hffff0c88;
			355: dout = 32'hffff0c88;
			356: dout = 32'hffff6987;
			357: dout = 32'h00000000;
			358: dout = 32'h00009679;
			359: dout = 32'h0000f378;
			360: dout = 32'h0000f02d;
			361: dout = 32'h00007d16;
			362: dout = 32'hffffce0f;
			363: dout = 32'hffff36f6;
			364: dout = 32'hffff0033;
			365: dout = 32'hffff4404;
			366: dout = 32'hffffe1ea;
			367: dout = 32'h00008e39;
			368: dout = 32'h0000f663;
			369: dout = 32'h0000e87c;
			370: dout = 32'h00006b2d;
			371: dout = 32'hffffba83;
			372: dout = 32'hffff2b25;
			373: dout = 32'hffff01c7;
			374: dout = 32'hffff523b;
			375: dout = 32'hfffff5f4;
			376: dout = 32'h00009e7c;
			377: dout = 32'h0000fb14;
			378: dout = 32'h0000df5b;
			379: dout = 32'h0000589b;
			380: dout = 32'hffffa765;
			381: dout = 32'hffff20a5;
			382: dout = 32'hffff04ec;
			383: dout = 32'hffff6184;
			384: dout = 32'h00000a0c;
			385: dout = 32'h0000adc5;
			386: dout = 32'h0000fe39;
			387: dout = 32'h0000d4db;
			388: dout = 32'h0000457d;
			389: dout = 32'hffff94d3;
			390: dout = 32'hffff1784;
			391: dout = 32'hffff099d;
			392: dout = 32'hffff71c7;
			393: dout = 32'h00001e16;
			394: dout = 32'h0000bbfc;
			395: dout = 32'h0000ffcd;
			396: dout = 32'h0000c90a;
			397: dout = 32'h000031f1;
			398: dout = 32'hffff82ea;
			399: dout = 32'hffff0fd3;
			400: dout = 32'h0000ec83;
			401: dout = 32'h000061f7;
			402: dout = 32'hffff9e09;
			403: dout = 32'hffff137d;
			404: dout = 32'hffff137d;
			405: dout = 32'hffff9e09;
			406: dout = 32'h000061f7;
			407: dout = 32'h0000ec83;
			408: dout = 32'h0000ec83;
			409: dout = 32'h000061f7;
			410: dout = 32'hffff9e09;
			411: dout = 32'hffff137d;
			412: dout = 32'hffff137d;
			413: dout = 32'hffff9e09;
			414: dout = 32'h000061f7;
			415: dout = 32'h0000ec83;
			416: dout = 32'h0000ec83;
			417: dout = 32'h000061f7;
			418: dout = 32'hffff9e09;
			419: dout = 32'hffff137d;
			420: dout = 32'hffff137d;
			421: dout = 32'hffff9e09;
			422: dout = 32'h000061f7;
			423: dout = 32'h0000ec83;
			424: dout = 32'h0000ec83;
			425: dout = 32'h000061f7;
			426: dout = 32'hffff9e09;
			427: dout = 32'hffff137d;
			428: dout = 32'hffff137d;
			429: dout = 32'hffff9e09;
			430: dout = 32'h000061f7;
			431: dout = 32'h0000ec83;
			432: dout = 32'h0000ec83;
			433: dout = 32'h000061f7;
			434: dout = 32'hffff9e09;
			435: dout = 32'hffff137d;
			436: dout = 32'hffff137d;
			437: dout = 32'hffff9e09;
			438: dout = 32'h000061f7;
			439: dout = 32'h0000ec83;
			440: dout = 32'h0000e87c;
			441: dout = 32'h0000457d;
			442: dout = 32'hffff71c7;
			443: dout = 32'hffff01c7;
			444: dout = 32'hffff4404;
			445: dout = 32'h00000a0c;
			446: dout = 32'h0000c90a;
			447: dout = 32'h0000fb14;
			448: dout = 32'h00007d16;
			449: dout = 32'hffffa765;
			450: dout = 32'hffff0fd3;
			451: dout = 32'hffff20a5;
			452: dout = 32'hffffce0f;
			453: dout = 32'h00009e7c;
			454: dout = 32'h0000ffcd;
			455: dout = 32'h0000adc5;
			456: dout = 32'hffffe1ea;
			457: dout = 32'hffff2b25;
			458: dout = 32'hffff099d;
			459: dout = 32'hffff94d3;
			460: dout = 32'h00006b2d;
			461: dout = 32'h0000f663;
			462: dout = 32'h0000d4db;
			463: dout = 32'h00001e16;
			464: dout = 32'hffff523b;
			465: dout = 32'hffff0033;
			466: dout = 32'hffff6184;
			467: dout = 32'h000031f1;
			468: dout = 32'h0000df5b;
			469: dout = 32'h0000f02d;
			470: dout = 32'h0000589b;
			471: dout = 32'hffff82ea;
			472: dout = 32'hffff04ec;
			473: dout = 32'hffff36f6;
			474: dout = 32'hfffff5f4;
			475: dout = 32'h0000bbfc;
			476: dout = 32'h0000fe39;
			477: dout = 32'h00008e39;
			478: dout = 32'hffffba83;
			479: dout = 32'hffff1784;
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
	localparam signed [31:0] FACTOR0 = 10362;
	localparam signed [31:0] FACTORK = 14654;
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
			0: dout = 32'h0000147a;
			1: dout = 32'h0000147e;
			2: dout = 32'h00001489;
			3: dout = 32'h0000149c;
			4: dout = 32'h000014b6;
			5: dout = 32'h000014d8;
			6: dout = 32'h00001501;
			7: dout = 32'h00001531;
			8: dout = 32'h00001569;
			9: dout = 32'h000015a9;
			10: dout = 32'h000015ef;
			11: dout = 32'h0000163e;
			12: dout = 32'h00001693;
			13: dout = 32'h000016f0;
			14: dout = 32'h00001754;
			15: dout = 32'h000017bf;
			16: dout = 32'h00001832;
			17: dout = 32'h000018ac;
			18: dout = 32'h0000192d;
			19: dout = 32'h000019b6;
			20: dout = 32'h00001a45;
			21: dout = 32'h00001adc;
			22: dout = 32'h00001b79;
			23: dout = 32'h00001c1e;
			24: dout = 32'h00001cca;
			25: dout = 32'h00001d7d;
			26: dout = 32'h00001e36;
			27: dout = 32'h00001ef6;
			28: dout = 32'h00001fbe;
			29: dout = 32'h0000208c;
			30: dout = 32'h00002160;
			31: dout = 32'h0000223c;
			32: dout = 32'h0000231e;
			33: dout = 32'h00002406;
			34: dout = 32'h000024f5;
			35: dout = 32'h000025eb;
			36: dout = 32'h000026e6;
			37: dout = 32'h000027e8;
			38: dout = 32'h000028f1;
			39: dout = 32'h000029ff;
			40: dout = 32'h00002b14;
			41: dout = 32'h00002c2e;
			42: dout = 32'h00002d4f;
			43: dout = 32'h00002e76;
			44: dout = 32'h00002fa2;
			45: dout = 32'h000030d4;
			46: dout = 32'h0000320c;
			47: dout = 32'h00003349;
			48: dout = 32'h0000348c;
			49: dout = 32'h000035d4;
			50: dout = 32'h00003722;
			51: dout = 32'h00003875;
			52: dout = 32'h000039cd;
			53: dout = 32'h00003b2a;
			54: dout = 32'h00003c8d;
			55: dout = 32'h00003df4;
			56: dout = 32'h00003f60;
			57: dout = 32'h000040d1;
			58: dout = 32'h00004246;
			59: dout = 32'h000043c0;
			60: dout = 32'h0000453f;
			61: dout = 32'h000046c2;
			62: dout = 32'h00004849;
			63: dout = 32'h000049d4;
			64: dout = 32'h00004b64;
			65: dout = 32'h00004cf7;
			66: dout = 32'h00004e8f;
			67: dout = 32'h0000502a;
			68: dout = 32'h000051c8;
			69: dout = 32'h0000536b;
			70: dout = 32'h00005511;
			71: dout = 32'h000056ba;
			72: dout = 32'h00005867;
			73: dout = 32'h00005a16;
			74: dout = 32'h00005bc9;
			75: dout = 32'h00005d7f;
			76: dout = 32'h00005f37;
			77: dout = 32'h000060f2;
			78: dout = 32'h000062b0;
			79: dout = 32'h00006471;
			80: dout = 32'h00006633;
			81: dout = 32'h000067f9;
			82: dout = 32'h000069c0;
			83: dout = 32'h00006b89;
			84: dout = 32'h00006d54;
			85: dout = 32'h00006f21;
			86: dout = 32'h000070f0;
			87: dout = 32'h000072c1;
			88: dout = 32'h00007493;
			89: dout = 32'h00007666;
			90: dout = 32'h0000783b;
			91: dout = 32'h00007a10;
			92: dout = 32'h00007be7;
			93: dout = 32'h00007dbf;
			94: dout = 32'h00007f97;
			95: dout = 32'h00008170;
			96: dout = 32'h0000834a;
			97: dout = 32'h00008524;
			98: dout = 32'h000086fe;
			99: dout = 32'h000088d9;
			100: dout = 32'h00008ab4;
			101: dout = 32'h00008c8e;
			102: dout = 32'h00008e69;
			103: dout = 32'h00009043;
			104: dout = 32'h0000921d;
			105: dout = 32'h000093f6;
			106: dout = 32'h000095cf;
			107: dout = 32'h000097a7;
			108: dout = 32'h0000997e;
			109: dout = 32'h00009b55;
			110: dout = 32'h00009d2a;
			111: dout = 32'h00009efe;
			112: dout = 32'h0000a0d0;
			113: dout = 32'h0000a2a2;
			114: dout = 32'h0000a471;
			115: dout = 32'h0000a63f;
			116: dout = 32'h0000a80b;
			117: dout = 32'h0000a9d6;
			118: dout = 32'h0000ab9e;
			119: dout = 32'h0000ad64;
			120: dout = 32'h0000af28;
			121: dout = 32'h0000b0ea;
			122: dout = 32'h0000b2a9;
			123: dout = 32'h0000b465;
			124: dout = 32'h0000b61f;
			125: dout = 32'h0000b7d6;
			126: dout = 32'h0000b98b;
			127: dout = 32'h0000bb3c;
			128: dout = 32'h0000bcea;
			129: dout = 32'h0000be95;
			130: dout = 32'h0000c03c;
			131: dout = 32'h0000c1e1;
			132: dout = 32'h0000c381;
			133: dout = 32'h0000c51e;
			134: dout = 32'h0000c6b7;
			135: dout = 32'h0000c84d;
			136: dout = 32'h0000c9de;
			137: dout = 32'h0000cb6c;
			138: dout = 32'h0000ccf5;
			139: dout = 32'h0000ce7a;
			140: dout = 32'h0000cffb;
			141: dout = 32'h0000d177;
			142: dout = 32'h0000d2ef;
			143: dout = 32'h0000d462;
			144: dout = 32'h0000d5d0;
			145: dout = 32'h0000d73a;
			146: dout = 32'h0000d89f;
			147: dout = 32'h0000d9ff;
			148: dout = 32'h0000db59;
			149: dout = 32'h0000dcaf;
			150: dout = 32'h0000ddff;
			151: dout = 32'h0000df4a;
			152: dout = 32'h0000e090;
			153: dout = 32'h0000e1d0;
			154: dout = 32'h0000e30b;
			155: dout = 32'h0000e440;
			156: dout = 32'h0000e56f;
			157: dout = 32'h0000e698;
			158: dout = 32'h0000e7bc;
			159: dout = 32'h0000e8da;
			160: dout = 32'h0000e9f1;
			161: dout = 32'h0000eb03;
			162: dout = 32'h0000ec0e;
			163: dout = 32'h0000ed13;
			164: dout = 32'h0000ee12;
			165: dout = 32'h0000ef0b;
			166: dout = 32'h0000effd;
			167: dout = 32'h0000f0e9;
			168: dout = 32'h0000f1ce;
			169: dout = 32'h0000f2ad;
			170: dout = 32'h0000f385;
			171: dout = 32'h0000f456;
			172: dout = 32'h0000f521;
			173: dout = 32'h0000f5e4;
			174: dout = 32'h0000f6a1;
			175: dout = 32'h0000f758;
			176: dout = 32'h0000f807;
			177: dout = 32'h0000f8af;
			178: dout = 32'h0000f950;
			179: dout = 32'h0000f9ea;
			180: dout = 32'h0000fa7d;
			181: dout = 32'h0000fb09;
			182: dout = 32'h0000fb8e;
			183: dout = 32'h0000fc0c;
			184: dout = 32'h0000fc82;
			185: dout = 32'h0000fcf1;
			186: dout = 32'h0000fd59;
			187: dout = 32'h0000fdb9;
			188: dout = 32'h0000fe13;
			189: dout = 32'h0000fe64;
			190: dout = 32'h0000feaf;
			191: dout = 32'h0000fef2;
			192: dout = 32'h0000ff2d;
			193: dout = 32'h0000ff62;
			194: dout = 32'h0000ff8f;
			195: dout = 32'h0000ffb4;
			196: dout = 32'h0000ffd2;
			197: dout = 32'h0000ffe8;
			198: dout = 32'h0000fff7;
			199: dout = 32'h0000ffff;
			200: dout = 32'h0000ffff;
			201: dout = 32'h0000fff7;
			202: dout = 32'h0000ffe8;
			203: dout = 32'h0000ffd2;
			204: dout = 32'h0000ffb4;
			205: dout = 32'h0000ff8f;
			206: dout = 32'h0000ff62;
			207: dout = 32'h0000ff2d;
			208: dout = 32'h0000fef2;
			209: dout = 32'h0000feaf;
			210: dout = 32'h0000fe64;
			211: dout = 32'h0000fe13;
			212: dout = 32'h0000fdb9;
			213: dout = 32'h0000fd59;
			214: dout = 32'h0000fcf1;
			215: dout = 32'h0000fc82;
			216: dout = 32'h0000fc0c;
			217: dout = 32'h0000fb8e;
			218: dout = 32'h0000fb09;
			219: dout = 32'h0000fa7d;
			220: dout = 32'h0000f9ea;
			221: dout = 32'h0000f950;
			222: dout = 32'h0000f8af;
			223: dout = 32'h0000f807;
			224: dout = 32'h0000f758;
			225: dout = 32'h0000f6a1;
			226: dout = 32'h0000f5e4;
			227: dout = 32'h0000f521;
			228: dout = 32'h0000f456;
			229: dout = 32'h0000f385;
			230: dout = 32'h0000f2ad;
			231: dout = 32'h0000f1ce;
			232: dout = 32'h0000f0e9;
			233: dout = 32'h0000effd;
			234: dout = 32'h0000ef0b;
			235: dout = 32'h0000ee12;
			236: dout = 32'h0000ed13;
			237: dout = 32'h0000ec0e;
			238: dout = 32'h0000eb03;
			239: dout = 32'h0000e9f1;
			240: dout = 32'h0000e8da;
			241: dout = 32'h0000e7bc;
			242: dout = 32'h0000e698;
			243: dout = 32'h0000e56f;
			244: dout = 32'h0000e440;
			245: dout = 32'h0000e30b;
			246: dout = 32'h0000e1d0;
			247: dout = 32'h0000e090;
			248: dout = 32'h0000df4a;
			249: dout = 32'h0000ddff;
			250: dout = 32'h0000dcaf;
			251: dout = 32'h0000db59;
			252: dout = 32'h0000d9ff;
			253: dout = 32'h0000d89f;
			254: dout = 32'h0000d73a;
			255: dout = 32'h0000d5d0;
			256: dout = 32'h0000d462;
			257: dout = 32'h0000d2ef;
			258: dout = 32'h0000d177;
			259: dout = 32'h0000cffb;
			260: dout = 32'h0000ce7a;
			261: dout = 32'h0000ccf5;
			262: dout = 32'h0000cb6c;
			263: dout = 32'h0000c9de;
			264: dout = 32'h0000c84d;
			265: dout = 32'h0000c6b7;
			266: dout = 32'h0000c51e;
			267: dout = 32'h0000c381;
			268: dout = 32'h0000c1e1;
			269: dout = 32'h0000c03c;
			270: dout = 32'h0000be95;
			271: dout = 32'h0000bcea;
			272: dout = 32'h0000bb3c;
			273: dout = 32'h0000b98b;
			274: dout = 32'h0000b7d6;
			275: dout = 32'h0000b61f;
			276: dout = 32'h0000b465;
			277: dout = 32'h0000b2a9;
			278: dout = 32'h0000b0ea;
			279: dout = 32'h0000af28;
			280: dout = 32'h0000ad64;
			281: dout = 32'h0000ab9e;
			282: dout = 32'h0000a9d6;
			283: dout = 32'h0000a80b;
			284: dout = 32'h0000a63f;
			285: dout = 32'h0000a471;
			286: dout = 32'h0000a2a2;
			287: dout = 32'h0000a0d0;
			288: dout = 32'h00009efe;
			289: dout = 32'h00009d2a;
			290: dout = 32'h00009b55;
			291: dout = 32'h0000997e;
			292: dout = 32'h000097a7;
			293: dout = 32'h000095cf;
			294: dout = 32'h000093f6;
			295: dout = 32'h0000921d;
			296: dout = 32'h00009043;
			297: dout = 32'h00008e69;
			298: dout = 32'h00008c8e;
			299: dout = 32'h00008ab4;
			300: dout = 32'h000088d9;
			301: dout = 32'h000086fe;
			302: dout = 32'h00008524;
			303: dout = 32'h0000834a;
			304: dout = 32'h00008170;
			305: dout = 32'h00007f97;
			306: dout = 32'h00007dbf;
			307: dout = 32'h00007be7;
			308: dout = 32'h00007a10;
			309: dout = 32'h0000783b;
			310: dout = 32'h00007666;
			311: dout = 32'h00007493;
			312: dout = 32'h000072c1;
			313: dout = 32'h000070f0;
			314: dout = 32'h00006f21;
			315: dout = 32'h00006d54;
			316: dout = 32'h00006b89;
			317: dout = 32'h000069c0;
			318: dout = 32'h000067f9;
			319: dout = 32'h00006633;
			320: dout = 32'h00006471;
			321: dout = 32'h000062b0;
			322: dout = 32'h000060f2;
			323: dout = 32'h00005f37;
			324: dout = 32'h00005d7f;
			325: dout = 32'h00005bc9;
			326: dout = 32'h00005a16;
			327: dout = 32'h00005867;
			328: dout = 32'h000056ba;
			329: dout = 32'h00005511;
			330: dout = 32'h0000536b;
			331: dout = 32'h000051c8;
			332: dout = 32'h0000502a;
			333: dout = 32'h00004e8f;
			334: dout = 32'h00004cf7;
			335: dout = 32'h00004b64;
			336: dout = 32'h000049d4;
			337: dout = 32'h00004849;
			338: dout = 32'h000046c2;
			339: dout = 32'h0000453f;
			340: dout = 32'h000043c0;
			341: dout = 32'h00004246;
			342: dout = 32'h000040d1;
			343: dout = 32'h00003f60;
			344: dout = 32'h00003df4;
			345: dout = 32'h00003c8d;
			346: dout = 32'h00003b2a;
			347: dout = 32'h000039cd;
			348: dout = 32'h00003875;
			349: dout = 32'h00003722;
			350: dout = 32'h000035d4;
			351: dout = 32'h0000348c;
			352: dout = 32'h00003349;
			353: dout = 32'h0000320c;
			354: dout = 32'h000030d4;
			355: dout = 32'h00002fa2;
			356: dout = 32'h00002e76;
			357: dout = 32'h00002d4f;
			358: dout = 32'h00002c2e;
			359: dout = 32'h00002b14;
			360: dout = 32'h000029ff;
			361: dout = 32'h000028f1;
			362: dout = 32'h000027e8;
			363: dout = 32'h000026e6;
			364: dout = 32'h000025eb;
			365: dout = 32'h000024f5;
			366: dout = 32'h00002406;
			367: dout = 32'h0000231e;
			368: dout = 32'h0000223c;
			369: dout = 32'h00002160;
			370: dout = 32'h0000208c;
			371: dout = 32'h00001fbe;
			372: dout = 32'h00001ef6;
			373: dout = 32'h00001e36;
			374: dout = 32'h00001d7d;
			375: dout = 32'h00001cca;
			376: dout = 32'h00001c1e;
			377: dout = 32'h00001b79;
			378: dout = 32'h00001adc;
			379: dout = 32'h00001a45;
			380: dout = 32'h000019b6;
			381: dout = 32'h0000192d;
			382: dout = 32'h000018ac;
			383: dout = 32'h00001832;
			384: dout = 32'h000017bf;
			385: dout = 32'h00001754;
			386: dout = 32'h000016f0;
			387: dout = 32'h00001693;
			388: dout = 32'h0000163e;
			389: dout = 32'h000015ef;
			390: dout = 32'h000015a9;
			391: dout = 32'h00001569;
			392: dout = 32'h00001531;
			393: dout = 32'h00001501;
			394: dout = 32'h000014d8;
			395: dout = 32'h000014b6;
			396: dout = 32'h0000149c;
			397: dout = 32'h00001489;
			398: dout = 32'h0000147e;
			399: dout = 32'h0000147a;
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
	input wire [11:0] addr;
	output reg [31:0] dout;
	always @(*) begin
		if (_sv2v_0)
			;
		case (addr)
			0: dout = 32'h00010004;
			1: dout = 32'h00008000;
			2: dout = 32'h00010000;
			3: dout = 32'h0000aaaa;
			4: dout = 32'h00005555;
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
			64: dout = 32'h00030008;
			65: dout = 32'h00005555;
			66: dout = 32'h0000aaaa;
			67: dout = 32'h00010000;
			68: dout = 32'h0000c000;
			69: dout = 32'h00008000;
			70: dout = 32'h00004000;
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
			96: dout = 32'h00000000;
			97: dout = 32'h00000000;
			98: dout = 32'h00000000;
			99: dout = 32'h00000000;
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
			128: dout = 32'h0006000b;
			129: dout = 32'h00004000;
			130: dout = 32'h00008000;
			131: dout = 32'h0000c000;
			132: dout = 32'h00010000;
			133: dout = 32'h0000aaaa;
			134: dout = 32'h00005555;
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
			192: dout = 32'h000a000f;
			193: dout = 32'h00005555;
			194: dout = 32'h0000aaaa;
			195: dout = 32'h00010000;
			196: dout = 32'h0000c000;
			197: dout = 32'h00008000;
			198: dout = 32'h00004000;
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
			224: dout = 32'h00000000;
			225: dout = 32'h00000000;
			226: dout = 32'h00000000;
			227: dout = 32'h00000000;
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
			256: dout = 32'h000d0012;
			257: dout = 32'h00004000;
			258: dout = 32'h00008000;
			259: dout = 32'h0000c000;
			260: dout = 32'h00010000;
			261: dout = 32'h0000aaaa;
			262: dout = 32'h00005555;
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
			320: dout = 32'h00110017;
			321: dout = 32'h00005555;
			322: dout = 32'h0000aaaa;
			323: dout = 32'h00010000;
			324: dout = 32'h0000cccc;
			325: dout = 32'h00009999;
			326: dout = 32'h00006666;
			327: dout = 32'h00003333;
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
			352: dout = 32'h00000000;
			353: dout = 32'h00000000;
			354: dout = 32'h00000000;
			355: dout = 32'h00000000;
			356: dout = 32'h00000000;
			357: dout = 32'h00000000;
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
			384: dout = 32'h0014001b;
			385: dout = 32'h00003333;
			386: dout = 32'h00006666;
			387: dout = 32'h00009999;
			388: dout = 32'h0000cccc;
			389: dout = 32'h00010000;
			390: dout = 32'h0000c000;
			391: dout = 32'h00008000;
			392: dout = 32'h00004000;
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
			416: dout = 32'h00000000;
			417: dout = 32'h00000000;
			418: dout = 32'h00000000;
			419: dout = 32'h00000000;
			420: dout = 32'h00000000;
			421: dout = 32'h00000000;
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
			448: dout = 32'h00190020;
			449: dout = 32'h00004000;
			450: dout = 32'h00008000;
			451: dout = 32'h0000c000;
			452: dout = 32'h00010000;
			453: dout = 32'h0000cccc;
			454: dout = 32'h00009999;
			455: dout = 32'h00006666;
			456: dout = 32'h00003333;
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
			480: dout = 32'h00000000;
			481: dout = 32'h00000000;
			482: dout = 32'h00000000;
			483: dout = 32'h00000000;
			484: dout = 32'h00000000;
			485: dout = 32'h00000000;
			486: dout = 32'h00000000;
			487: dout = 32'h00000000;
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
			512: dout = 32'h001d0025;
			513: dout = 32'h00003333;
			514: dout = 32'h00006666;
			515: dout = 32'h00009999;
			516: dout = 32'h0000cccc;
			517: dout = 32'h00010000;
			518: dout = 32'h0000cccc;
			519: dout = 32'h00009999;
			520: dout = 32'h00006666;
			521: dout = 32'h00003333;
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
			544: dout = 32'h00000000;
			545: dout = 32'h00000000;
			546: dout = 32'h00000000;
			547: dout = 32'h00000000;
			548: dout = 32'h00000000;
			549: dout = 32'h00000000;
			550: dout = 32'h00000000;
			551: dout = 32'h00000000;
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
			576: dout = 32'h0022002a;
			577: dout = 32'h00003333;
			578: dout = 32'h00006666;
			579: dout = 32'h00009999;
			580: dout = 32'h0000cccc;
			581: dout = 32'h00010000;
			582: dout = 32'h0000cccc;
			583: dout = 32'h00009999;
			584: dout = 32'h00006666;
			585: dout = 32'h00003333;
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
			608: dout = 32'h00000000;
			609: dout = 32'h00000000;
			610: dout = 32'h00000000;
			611: dout = 32'h00000000;
			612: dout = 32'h00000000;
			613: dout = 32'h00000000;
			614: dout = 32'h00000000;
			615: dout = 32'h00000000;
			616: dout = 32'h00000000;
			617: dout = 32'h00000000;
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
			640: dout = 32'h0027002f;
			641: dout = 32'h00003333;
			642: dout = 32'h00006666;
			643: dout = 32'h00009999;
			644: dout = 32'h0000cccc;
			645: dout = 32'h00010000;
			646: dout = 32'h0000cccc;
			647: dout = 32'h00009999;
			648: dout = 32'h00006666;
			649: dout = 32'h00003333;
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
			672: dout = 32'h00000000;
			673: dout = 32'h00000000;
			674: dout = 32'h00000000;
			675: dout = 32'h00000000;
			676: dout = 32'h00000000;
			677: dout = 32'h00000000;
			678: dout = 32'h00000000;
			679: dout = 32'h00000000;
			680: dout = 32'h00000000;
			681: dout = 32'h00000000;
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
			704: dout = 32'h002c0035;
			705: dout = 32'h00003333;
			706: dout = 32'h00006666;
			707: dout = 32'h00009999;
			708: dout = 32'h0000cccc;
			709: dout = 32'h00010000;
			710: dout = 32'h0000d555;
			711: dout = 32'h0000aaaa;
			712: dout = 32'h00008000;
			713: dout = 32'h00005555;
			714: dout = 32'h00002aaa;
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
			736: dout = 32'h00000000;
			737: dout = 32'h00000000;
			738: dout = 32'h00000000;
			739: dout = 32'h00000000;
			740: dout = 32'h00000000;
			741: dout = 32'h00000000;
			742: dout = 32'h00000000;
			743: dout = 32'h00000000;
			744: dout = 32'h00000000;
			745: dout = 32'h00000000;
			746: dout = 32'h00000000;
			747: dout = 32'h00000000;
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
			768: dout = 32'h0031003c;
			769: dout = 32'h00002aaa;
			770: dout = 32'h00005555;
			771: dout = 32'h00008000;
			772: dout = 32'h0000aaaa;
			773: dout = 32'h0000d555;
			774: dout = 32'h00010000;
			775: dout = 32'h0000db6d;
			776: dout = 32'h0000b6db;
			777: dout = 32'h00009249;
			778: dout = 32'h00006db6;
			779: dout = 32'h00004924;
			780: dout = 32'h00002492;
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
			800: dout = 32'h00000000;
			801: dout = 32'h00000000;
			802: dout = 32'h00000000;
			803: dout = 32'h00000000;
			804: dout = 32'h00000000;
			805: dout = 32'h00000000;
			806: dout = 32'h00000000;
			807: dout = 32'h00000000;
			808: dout = 32'h00000000;
			809: dout = 32'h00000000;
			810: dout = 32'h00000000;
			811: dout = 32'h00000000;
			812: dout = 32'h00000000;
			813: dout = 32'h00000000;
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
			832: dout = 32'h00370042;
			833: dout = 32'h00002492;
			834: dout = 32'h00004924;
			835: dout = 32'h00006db6;
			836: dout = 32'h00009249;
			837: dout = 32'h0000b6db;
			838: dout = 32'h0000db6d;
			839: dout = 32'h00010000;
			840: dout = 32'h0000d555;
			841: dout = 32'h0000aaaa;
			842: dout = 32'h00008000;
			843: dout = 32'h00005555;
			844: dout = 32'h00002aaa;
			845: dout = 32'h00000000;
			846: dout = 32'h00000000;
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
			864: dout = 32'h00000000;
			865: dout = 32'h00000000;
			866: dout = 32'h00000000;
			867: dout = 32'h00000000;
			868: dout = 32'h00000000;
			869: dout = 32'h00000000;
			870: dout = 32'h00000000;
			871: dout = 32'h00000000;
			872: dout = 32'h00000000;
			873: dout = 32'h00000000;
			874: dout = 32'h00000000;
			875: dout = 32'h00000000;
			876: dout = 32'h00000000;
			877: dout = 32'h00000000;
			878: dout = 32'h00000000;
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
			896: dout = 32'h003e004a;
			897: dout = 32'h00002aaa;
			898: dout = 32'h00005555;
			899: dout = 32'h00008000;
			900: dout = 32'h0000aaaa;
			901: dout = 32'h0000d555;
			902: dout = 32'h00010000;
			903: dout = 32'h0000e000;
			904: dout = 32'h0000c000;
			905: dout = 32'h0000a000;
			906: dout = 32'h00008000;
			907: dout = 32'h00006000;
			908: dout = 32'h00004000;
			909: dout = 32'h00002000;
			910: dout = 32'h00000000;
			911: dout = 32'h00000000;
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
			928: dout = 32'h00000000;
			929: dout = 32'h00000000;
			930: dout = 32'h00000000;
			931: dout = 32'h00000000;
			932: dout = 32'h00000000;
			933: dout = 32'h00000000;
			934: dout = 32'h00000000;
			935: dout = 32'h00000000;
			936: dout = 32'h00000000;
			937: dout = 32'h00000000;
			938: dout = 32'h00000000;
			939: dout = 32'h00000000;
			940: dout = 32'h00000000;
			941: dout = 32'h00000000;
			942: dout = 32'h00000000;
			943: dout = 32'h00000000;
			944: dout = 32'h00000000;
			945: dout = 32'h00000000;
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
			960: dout = 32'h00440051;
			961: dout = 32'h00002000;
			962: dout = 32'h00004000;
			963: dout = 32'h00006000;
			964: dout = 32'h00008000;
			965: dout = 32'h0000a000;
			966: dout = 32'h0000c000;
			967: dout = 32'h0000e000;
			968: dout = 32'h00010000;
			969: dout = 32'h0000db6d;
			970: dout = 32'h0000b6db;
			971: dout = 32'h00009249;
			972: dout = 32'h00006db6;
			973: dout = 32'h00004924;
			974: dout = 32'h00002492;
			975: dout = 32'h00000000;
			976: dout = 32'h00000000;
			977: dout = 32'h00000000;
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
			992: dout = 32'h00000000;
			993: dout = 32'h00000000;
			994: dout = 32'h00000000;
			995: dout = 32'h00000000;
			996: dout = 32'h00000000;
			997: dout = 32'h00000000;
			998: dout = 32'h00000000;
			999: dout = 32'h00000000;
			1000: dout = 32'h00000000;
			1001: dout = 32'h00000000;
			1002: dout = 32'h00000000;
			1003: dout = 32'h00000000;
			1004: dout = 32'h00000000;
			1005: dout = 32'h00000000;
			1006: dout = 32'h00000000;
			1007: dout = 32'h00000000;
			1008: dout = 32'h00000000;
			1009: dout = 32'h00000000;
			1010: dout = 32'h00000000;
			1011: dout = 32'h00000000;
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
			1024: dout = 32'h004c0059;
			1025: dout = 32'h00002492;
			1026: dout = 32'h00004924;
			1027: dout = 32'h00006db6;
			1028: dout = 32'h00009249;
			1029: dout = 32'h0000b6db;
			1030: dout = 32'h0000db6d;
			1031: dout = 32'h00010000;
			1032: dout = 32'h0000e000;
			1033: dout = 32'h0000c000;
			1034: dout = 32'h0000a000;
			1035: dout = 32'h00008000;
			1036: dout = 32'h00006000;
			1037: dout = 32'h00004000;
			1038: dout = 32'h00002000;
			1039: dout = 32'h00000000;
			1040: dout = 32'h00000000;
			1041: dout = 32'h00000000;
			1042: dout = 32'h00000000;
			1043: dout = 32'h00000000;
			1044: dout = 32'h00000000;
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
			1056: dout = 32'h00000000;
			1057: dout = 32'h00000000;
			1058: dout = 32'h00000000;
			1059: dout = 32'h00000000;
			1060: dout = 32'h00000000;
			1061: dout = 32'h00000000;
			1062: dout = 32'h00000000;
			1063: dout = 32'h00000000;
			1064: dout = 32'h00000000;
			1065: dout = 32'h00000000;
			1066: dout = 32'h00000000;
			1067: dout = 32'h00000000;
			1068: dout = 32'h00000000;
			1069: dout = 32'h00000000;
			1070: dout = 32'h00000000;
			1071: dout = 32'h00000000;
			1072: dout = 32'h00000000;
			1073: dout = 32'h00000000;
			1074: dout = 32'h00000000;
			1075: dout = 32'h00000000;
			1076: dout = 32'h00000000;
			1077: dout = 32'h00000000;
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
			1088: dout = 32'h00530062;
			1089: dout = 32'h00002000;
			1090: dout = 32'h00004000;
			1091: dout = 32'h00006000;
			1092: dout = 32'h00008000;
			1093: dout = 32'h0000a000;
			1094: dout = 32'h0000c000;
			1095: dout = 32'h0000e000;
			1096: dout = 32'h00010000;
			1097: dout = 32'h0000e38e;
			1098: dout = 32'h0000c71c;
			1099: dout = 32'h0000aaaa;
			1100: dout = 32'h00008e38;
			1101: dout = 32'h000071c7;
			1102: dout = 32'h00005555;
			1103: dout = 32'h000038e3;
			1104: dout = 32'h00001c71;
			1105: dout = 32'h00000000;
			1106: dout = 32'h00000000;
			1107: dout = 32'h00000000;
			1108: dout = 32'h00000000;
			1109: dout = 32'h00000000;
			1110: dout = 32'h00000000;
			1111: dout = 32'h00000000;
			1112: dout = 32'h00000000;
			1113: dout = 32'h00000000;
			1114: dout = 32'h00000000;
			1115: dout = 32'h00000000;
			1116: dout = 32'h00000000;
			1117: dout = 32'h00000000;
			1118: dout = 32'h00000000;
			1119: dout = 32'h00000000;
			1120: dout = 32'h00000000;
			1121: dout = 32'h00000000;
			1122: dout = 32'h00000000;
			1123: dout = 32'h00000000;
			1124: dout = 32'h00000000;
			1125: dout = 32'h00000000;
			1126: dout = 32'h00000000;
			1127: dout = 32'h00000000;
			1128: dout = 32'h00000000;
			1129: dout = 32'h00000000;
			1130: dout = 32'h00000000;
			1131: dout = 32'h00000000;
			1132: dout = 32'h00000000;
			1133: dout = 32'h00000000;
			1134: dout = 32'h00000000;
			1135: dout = 32'h00000000;
			1136: dout = 32'h00000000;
			1137: dout = 32'h00000000;
			1138: dout = 32'h00000000;
			1139: dout = 32'h00000000;
			1140: dout = 32'h00000000;
			1141: dout = 32'h00000000;
			1142: dout = 32'h00000000;
			1143: dout = 32'h00000000;
			1144: dout = 32'h00000000;
			1145: dout = 32'h00000000;
			1146: dout = 32'h00000000;
			1147: dout = 32'h00000000;
			1148: dout = 32'h00000000;
			1149: dout = 32'h00000000;
			1150: dout = 32'h00000000;
			1151: dout = 32'h00000000;
			1152: dout = 32'h005b006b;
			1153: dout = 32'h00001c71;
			1154: dout = 32'h000038e3;
			1155: dout = 32'h00005555;
			1156: dout = 32'h000071c7;
			1157: dout = 32'h00008e38;
			1158: dout = 32'h0000aaaa;
			1159: dout = 32'h0000c71c;
			1160: dout = 32'h0000e38e;
			1161: dout = 32'h00010000;
			1162: dout = 32'h0000e38e;
			1163: dout = 32'h0000c71c;
			1164: dout = 32'h0000aaaa;
			1165: dout = 32'h00008e38;
			1166: dout = 32'h000071c7;
			1167: dout = 32'h00005555;
			1168: dout = 32'h000038e3;
			1169: dout = 32'h00001c71;
			1170: dout = 32'h00000000;
			1171: dout = 32'h00000000;
			1172: dout = 32'h00000000;
			1173: dout = 32'h00000000;
			1174: dout = 32'h00000000;
			1175: dout = 32'h00000000;
			1176: dout = 32'h00000000;
			1177: dout = 32'h00000000;
			1178: dout = 32'h00000000;
			1179: dout = 32'h00000000;
			1180: dout = 32'h00000000;
			1181: dout = 32'h00000000;
			1182: dout = 32'h00000000;
			1183: dout = 32'h00000000;
			1184: dout = 32'h00000000;
			1185: dout = 32'h00000000;
			1186: dout = 32'h00000000;
			1187: dout = 32'h00000000;
			1188: dout = 32'h00000000;
			1189: dout = 32'h00000000;
			1190: dout = 32'h00000000;
			1191: dout = 32'h00000000;
			1192: dout = 32'h00000000;
			1193: dout = 32'h00000000;
			1194: dout = 32'h00000000;
			1195: dout = 32'h00000000;
			1196: dout = 32'h00000000;
			1197: dout = 32'h00000000;
			1198: dout = 32'h00000000;
			1199: dout = 32'h00000000;
			1200: dout = 32'h00000000;
			1201: dout = 32'h00000000;
			1202: dout = 32'h00000000;
			1203: dout = 32'h00000000;
			1204: dout = 32'h00000000;
			1205: dout = 32'h00000000;
			1206: dout = 32'h00000000;
			1207: dout = 32'h00000000;
			1208: dout = 32'h00000000;
			1209: dout = 32'h00000000;
			1210: dout = 32'h00000000;
			1211: dout = 32'h00000000;
			1212: dout = 32'h00000000;
			1213: dout = 32'h00000000;
			1214: dout = 32'h00000000;
			1215: dout = 32'h00000000;
			1216: dout = 32'h00640075;
			1217: dout = 32'h00001c71;
			1218: dout = 32'h000038e3;
			1219: dout = 32'h00005555;
			1220: dout = 32'h000071c7;
			1221: dout = 32'h00008e38;
			1222: dout = 32'h0000aaaa;
			1223: dout = 32'h0000c71c;
			1224: dout = 32'h0000e38e;
			1225: dout = 32'h00010000;
			1226: dout = 32'h0000e666;
			1227: dout = 32'h0000cccc;
			1228: dout = 32'h0000b333;
			1229: dout = 32'h00009999;
			1230: dout = 32'h00008000;
			1231: dout = 32'h00006666;
			1232: dout = 32'h00004ccc;
			1233: dout = 32'h00003333;
			1234: dout = 32'h00001999;
			1235: dout = 32'h00000000;
			1236: dout = 32'h00000000;
			1237: dout = 32'h00000000;
			1238: dout = 32'h00000000;
			1239: dout = 32'h00000000;
			1240: dout = 32'h00000000;
			1241: dout = 32'h00000000;
			1242: dout = 32'h00000000;
			1243: dout = 32'h00000000;
			1244: dout = 32'h00000000;
			1245: dout = 32'h00000000;
			1246: dout = 32'h00000000;
			1247: dout = 32'h00000000;
			1248: dout = 32'h00000000;
			1249: dout = 32'h00000000;
			1250: dout = 32'h00000000;
			1251: dout = 32'h00000000;
			1252: dout = 32'h00000000;
			1253: dout = 32'h00000000;
			1254: dout = 32'h00000000;
			1255: dout = 32'h00000000;
			1256: dout = 32'h00000000;
			1257: dout = 32'h00000000;
			1258: dout = 32'h00000000;
			1259: dout = 32'h00000000;
			1260: dout = 32'h00000000;
			1261: dout = 32'h00000000;
			1262: dout = 32'h00000000;
			1263: dout = 32'h00000000;
			1264: dout = 32'h00000000;
			1265: dout = 32'h00000000;
			1266: dout = 32'h00000000;
			1267: dout = 32'h00000000;
			1268: dout = 32'h00000000;
			1269: dout = 32'h00000000;
			1270: dout = 32'h00000000;
			1271: dout = 32'h00000000;
			1272: dout = 32'h00000000;
			1273: dout = 32'h00000000;
			1274: dout = 32'h00000000;
			1275: dout = 32'h00000000;
			1276: dout = 32'h00000000;
			1277: dout = 32'h00000000;
			1278: dout = 32'h00000000;
			1279: dout = 32'h00000000;
			1280: dout = 32'h006d007f;
			1281: dout = 32'h00001999;
			1282: dout = 32'h00003333;
			1283: dout = 32'h00004ccc;
			1284: dout = 32'h00006666;
			1285: dout = 32'h00008000;
			1286: dout = 32'h00009999;
			1287: dout = 32'h0000b333;
			1288: dout = 32'h0000cccc;
			1289: dout = 32'h0000e666;
			1290: dout = 32'h00010000;
			1291: dout = 32'h0000e666;
			1292: dout = 32'h0000cccc;
			1293: dout = 32'h0000b333;
			1294: dout = 32'h00009999;
			1295: dout = 32'h00008000;
			1296: dout = 32'h00006666;
			1297: dout = 32'h00004ccc;
			1298: dout = 32'h00003333;
			1299: dout = 32'h00001999;
			1300: dout = 32'h00000000;
			1301: dout = 32'h00000000;
			1302: dout = 32'h00000000;
			1303: dout = 32'h00000000;
			1304: dout = 32'h00000000;
			1305: dout = 32'h00000000;
			1306: dout = 32'h00000000;
			1307: dout = 32'h00000000;
			1308: dout = 32'h00000000;
			1309: dout = 32'h00000000;
			1310: dout = 32'h00000000;
			1311: dout = 32'h00000000;
			1312: dout = 32'h00000000;
			1313: dout = 32'h00000000;
			1314: dout = 32'h00000000;
			1315: dout = 32'h00000000;
			1316: dout = 32'h00000000;
			1317: dout = 32'h00000000;
			1318: dout = 32'h00000000;
			1319: dout = 32'h00000000;
			1320: dout = 32'h00000000;
			1321: dout = 32'h00000000;
			1322: dout = 32'h00000000;
			1323: dout = 32'h00000000;
			1324: dout = 32'h00000000;
			1325: dout = 32'h00000000;
			1326: dout = 32'h00000000;
			1327: dout = 32'h00000000;
			1328: dout = 32'h00000000;
			1329: dout = 32'h00000000;
			1330: dout = 32'h00000000;
			1331: dout = 32'h00000000;
			1332: dout = 32'h00000000;
			1333: dout = 32'h00000000;
			1334: dout = 32'h00000000;
			1335: dout = 32'h00000000;
			1336: dout = 32'h00000000;
			1337: dout = 32'h00000000;
			1338: dout = 32'h00000000;
			1339: dout = 32'h00000000;
			1340: dout = 32'h00000000;
			1341: dout = 32'h00000000;
			1342: dout = 32'h00000000;
			1343: dout = 32'h00000000;
			1344: dout = 32'h0077008a;
			1345: dout = 32'h00001999;
			1346: dout = 32'h00003333;
			1347: dout = 32'h00004ccc;
			1348: dout = 32'h00006666;
			1349: dout = 32'h00008000;
			1350: dout = 32'h00009999;
			1351: dout = 32'h0000b333;
			1352: dout = 32'h0000cccc;
			1353: dout = 32'h0000e666;
			1354: dout = 32'h00010000;
			1355: dout = 32'h0000e8ba;
			1356: dout = 32'h0000d174;
			1357: dout = 32'h0000ba2e;
			1358: dout = 32'h0000a2e8;
			1359: dout = 32'h00008ba2;
			1360: dout = 32'h0000745d;
			1361: dout = 32'h00005d17;
			1362: dout = 32'h000045d1;
			1363: dout = 32'h00002e8b;
			1364: dout = 32'h00001745;
			1365: dout = 32'h00000000;
			1366: dout = 32'h00000000;
			1367: dout = 32'h00000000;
			1368: dout = 32'h00000000;
			1369: dout = 32'h00000000;
			1370: dout = 32'h00000000;
			1371: dout = 32'h00000000;
			1372: dout = 32'h00000000;
			1373: dout = 32'h00000000;
			1374: dout = 32'h00000000;
			1375: dout = 32'h00000000;
			1376: dout = 32'h00000000;
			1377: dout = 32'h00000000;
			1378: dout = 32'h00000000;
			1379: dout = 32'h00000000;
			1380: dout = 32'h00000000;
			1381: dout = 32'h00000000;
			1382: dout = 32'h00000000;
			1383: dout = 32'h00000000;
			1384: dout = 32'h00000000;
			1385: dout = 32'h00000000;
			1386: dout = 32'h00000000;
			1387: dout = 32'h00000000;
			1388: dout = 32'h00000000;
			1389: dout = 32'h00000000;
			1390: dout = 32'h00000000;
			1391: dout = 32'h00000000;
			1392: dout = 32'h00000000;
			1393: dout = 32'h00000000;
			1394: dout = 32'h00000000;
			1395: dout = 32'h00000000;
			1396: dout = 32'h00000000;
			1397: dout = 32'h00000000;
			1398: dout = 32'h00000000;
			1399: dout = 32'h00000000;
			1400: dout = 32'h00000000;
			1401: dout = 32'h00000000;
			1402: dout = 32'h00000000;
			1403: dout = 32'h00000000;
			1404: dout = 32'h00000000;
			1405: dout = 32'h00000000;
			1406: dout = 32'h00000000;
			1407: dout = 32'h00000000;
			1408: dout = 32'h00810096;
			1409: dout = 32'h00001745;
			1410: dout = 32'h00002e8b;
			1411: dout = 32'h000045d1;
			1412: dout = 32'h00005d17;
			1413: dout = 32'h0000745d;
			1414: dout = 32'h00008ba2;
			1415: dout = 32'h0000a2e8;
			1416: dout = 32'h0000ba2e;
			1417: dout = 32'h0000d174;
			1418: dout = 32'h0000e8ba;
			1419: dout = 32'h00010000;
			1420: dout = 32'h0000eaaa;
			1421: dout = 32'h0000d555;
			1422: dout = 32'h0000c000;
			1423: dout = 32'h0000aaaa;
			1424: dout = 32'h00009555;
			1425: dout = 32'h00008000;
			1426: dout = 32'h00006aaa;
			1427: dout = 32'h00005555;
			1428: dout = 32'h00004000;
			1429: dout = 32'h00002aaa;
			1430: dout = 32'h00001555;
			1431: dout = 32'h00000000;
			1432: dout = 32'h00000000;
			1433: dout = 32'h00000000;
			1434: dout = 32'h00000000;
			1435: dout = 32'h00000000;
			1436: dout = 32'h00000000;
			1437: dout = 32'h00000000;
			1438: dout = 32'h00000000;
			1439: dout = 32'h00000000;
			1440: dout = 32'h00000000;
			1441: dout = 32'h00000000;
			1442: dout = 32'h00000000;
			1443: dout = 32'h00000000;
			1444: dout = 32'h00000000;
			1445: dout = 32'h00000000;
			1446: dout = 32'h00000000;
			1447: dout = 32'h00000000;
			1448: dout = 32'h00000000;
			1449: dout = 32'h00000000;
			1450: dout = 32'h00000000;
			1451: dout = 32'h00000000;
			1452: dout = 32'h00000000;
			1453: dout = 32'h00000000;
			1454: dout = 32'h00000000;
			1455: dout = 32'h00000000;
			1456: dout = 32'h00000000;
			1457: dout = 32'h00000000;
			1458: dout = 32'h00000000;
			1459: dout = 32'h00000000;
			1460: dout = 32'h00000000;
			1461: dout = 32'h00000000;
			1462: dout = 32'h00000000;
			1463: dout = 32'h00000000;
			1464: dout = 32'h00000000;
			1465: dout = 32'h00000000;
			1466: dout = 32'h00000000;
			1467: dout = 32'h00000000;
			1468: dout = 32'h00000000;
			1469: dout = 32'h00000000;
			1470: dout = 32'h00000000;
			1471: dout = 32'h00000000;
			1472: dout = 32'h008c00a2;
			1473: dout = 32'h00001555;
			1474: dout = 32'h00002aaa;
			1475: dout = 32'h00004000;
			1476: dout = 32'h00005555;
			1477: dout = 32'h00006aaa;
			1478: dout = 32'h00008000;
			1479: dout = 32'h00009555;
			1480: dout = 32'h0000aaaa;
			1481: dout = 32'h0000c000;
			1482: dout = 32'h0000d555;
			1483: dout = 32'h0000eaaa;
			1484: dout = 32'h00010000;
			1485: dout = 32'h0000eaaa;
			1486: dout = 32'h0000d555;
			1487: dout = 32'h0000c000;
			1488: dout = 32'h0000aaaa;
			1489: dout = 32'h00009555;
			1490: dout = 32'h00008000;
			1491: dout = 32'h00006aaa;
			1492: dout = 32'h00005555;
			1493: dout = 32'h00004000;
			1494: dout = 32'h00002aaa;
			1495: dout = 32'h00001555;
			1496: dout = 32'h00000000;
			1497: dout = 32'h00000000;
			1498: dout = 32'h00000000;
			1499: dout = 32'h00000000;
			1500: dout = 32'h00000000;
			1501: dout = 32'h00000000;
			1502: dout = 32'h00000000;
			1503: dout = 32'h00000000;
			1504: dout = 32'h00000000;
			1505: dout = 32'h00000000;
			1506: dout = 32'h00000000;
			1507: dout = 32'h00000000;
			1508: dout = 32'h00000000;
			1509: dout = 32'h00000000;
			1510: dout = 32'h00000000;
			1511: dout = 32'h00000000;
			1512: dout = 32'h00000000;
			1513: dout = 32'h00000000;
			1514: dout = 32'h00000000;
			1515: dout = 32'h00000000;
			1516: dout = 32'h00000000;
			1517: dout = 32'h00000000;
			1518: dout = 32'h00000000;
			1519: dout = 32'h00000000;
			1520: dout = 32'h00000000;
			1521: dout = 32'h00000000;
			1522: dout = 32'h00000000;
			1523: dout = 32'h00000000;
			1524: dout = 32'h00000000;
			1525: dout = 32'h00000000;
			1526: dout = 32'h00000000;
			1527: dout = 32'h00000000;
			1528: dout = 32'h00000000;
			1529: dout = 32'h00000000;
			1530: dout = 32'h00000000;
			1531: dout = 32'h00000000;
			1532: dout = 32'h00000000;
			1533: dout = 32'h00000000;
			1534: dout = 32'h00000000;
			1535: dout = 32'h00000000;
			1536: dout = 32'h009800af;
			1537: dout = 32'h00001555;
			1538: dout = 32'h00002aaa;
			1539: dout = 32'h00004000;
			1540: dout = 32'h00005555;
			1541: dout = 32'h00006aaa;
			1542: dout = 32'h00008000;
			1543: dout = 32'h00009555;
			1544: dout = 32'h0000aaaa;
			1545: dout = 32'h0000c000;
			1546: dout = 32'h0000d555;
			1547: dout = 32'h0000eaaa;
			1548: dout = 32'h00010000;
			1549: dout = 32'h0000ec4e;
			1550: dout = 32'h0000d89d;
			1551: dout = 32'h0000c4ec;
			1552: dout = 32'h0000b13b;
			1553: dout = 32'h00009d89;
			1554: dout = 32'h000089d8;
			1555: dout = 32'h00007627;
			1556: dout = 32'h00006276;
			1557: dout = 32'h00004ec4;
			1558: dout = 32'h00003b13;
			1559: dout = 32'h00002762;
			1560: dout = 32'h000013b1;
			1561: dout = 32'h00000000;
			1562: dout = 32'h00000000;
			1563: dout = 32'h00000000;
			1564: dout = 32'h00000000;
			1565: dout = 32'h00000000;
			1566: dout = 32'h00000000;
			1567: dout = 32'h00000000;
			1568: dout = 32'h00000000;
			1569: dout = 32'h00000000;
			1570: dout = 32'h00000000;
			1571: dout = 32'h00000000;
			1572: dout = 32'h00000000;
			1573: dout = 32'h00000000;
			1574: dout = 32'h00000000;
			1575: dout = 32'h00000000;
			1576: dout = 32'h00000000;
			1577: dout = 32'h00000000;
			1578: dout = 32'h00000000;
			1579: dout = 32'h00000000;
			1580: dout = 32'h00000000;
			1581: dout = 32'h00000000;
			1582: dout = 32'h00000000;
			1583: dout = 32'h00000000;
			1584: dout = 32'h00000000;
			1585: dout = 32'h00000000;
			1586: dout = 32'h00000000;
			1587: dout = 32'h00000000;
			1588: dout = 32'h00000000;
			1589: dout = 32'h00000000;
			1590: dout = 32'h00000000;
			1591: dout = 32'h00000000;
			1592: dout = 32'h00000000;
			1593: dout = 32'h00000000;
			1594: dout = 32'h00000000;
			1595: dout = 32'h00000000;
			1596: dout = 32'h00000000;
			1597: dout = 32'h00000000;
			1598: dout = 32'h00000000;
			1599: dout = 32'h00000000;
			1600: dout = 32'h00a400bd;
			1601: dout = 32'h000013b1;
			1602: dout = 32'h00002762;
			1603: dout = 32'h00003b13;
			1604: dout = 32'h00004ec4;
			1605: dout = 32'h00006276;
			1606: dout = 32'h00007627;
			1607: dout = 32'h000089d8;
			1608: dout = 32'h00009d89;
			1609: dout = 32'h0000b13b;
			1610: dout = 32'h0000c4ec;
			1611: dout = 32'h0000d89d;
			1612: dout = 32'h0000ec4e;
			1613: dout = 32'h00010000;
			1614: dout = 32'h0000edb6;
			1615: dout = 32'h0000db6d;
			1616: dout = 32'h0000c924;
			1617: dout = 32'h0000b6db;
			1618: dout = 32'h0000a492;
			1619: dout = 32'h00009249;
			1620: dout = 32'h00008000;
			1621: dout = 32'h00006db6;
			1622: dout = 32'h00005b6d;
			1623: dout = 32'h00004924;
			1624: dout = 32'h000036db;
			1625: dout = 32'h00002492;
			1626: dout = 32'h00001249;
			1627: dout = 32'h00000000;
			1628: dout = 32'h00000000;
			1629: dout = 32'h00000000;
			1630: dout = 32'h00000000;
			1631: dout = 32'h00000000;
			1632: dout = 32'h00000000;
			1633: dout = 32'h00000000;
			1634: dout = 32'h00000000;
			1635: dout = 32'h00000000;
			1636: dout = 32'h00000000;
			1637: dout = 32'h00000000;
			1638: dout = 32'h00000000;
			1639: dout = 32'h00000000;
			1640: dout = 32'h00000000;
			1641: dout = 32'h00000000;
			1642: dout = 32'h00000000;
			1643: dout = 32'h00000000;
			1644: dout = 32'h00000000;
			1645: dout = 32'h00000000;
			1646: dout = 32'h00000000;
			1647: dout = 32'h00000000;
			1648: dout = 32'h00000000;
			1649: dout = 32'h00000000;
			1650: dout = 32'h00000000;
			1651: dout = 32'h00000000;
			1652: dout = 32'h00000000;
			1653: dout = 32'h00000000;
			1654: dout = 32'h00000000;
			1655: dout = 32'h00000000;
			1656: dout = 32'h00000000;
			1657: dout = 32'h00000000;
			1658: dout = 32'h00000000;
			1659: dout = 32'h00000000;
			1660: dout = 32'h00000000;
			1661: dout = 32'h00000000;
			1662: dout = 32'h00000000;
			1663: dout = 32'h00000000;
			1664: dout = 32'h00b100cc;
			1665: dout = 32'h00001249;
			1666: dout = 32'h00002492;
			1667: dout = 32'h000036db;
			1668: dout = 32'h00004924;
			1669: dout = 32'h00005b6d;
			1670: dout = 32'h00006db6;
			1671: dout = 32'h00008000;
			1672: dout = 32'h00009249;
			1673: dout = 32'h0000a492;
			1674: dout = 32'h0000b6db;
			1675: dout = 32'h0000c924;
			1676: dout = 32'h0000db6d;
			1677: dout = 32'h0000edb6;
			1678: dout = 32'h00010000;
			1679: dout = 32'h0000eeee;
			1680: dout = 32'h0000dddd;
			1681: dout = 32'h0000cccc;
			1682: dout = 32'h0000bbbb;
			1683: dout = 32'h0000aaaa;
			1684: dout = 32'h00009999;
			1685: dout = 32'h00008888;
			1686: dout = 32'h00007777;
			1687: dout = 32'h00006666;
			1688: dout = 32'h00005555;
			1689: dout = 32'h00004444;
			1690: dout = 32'h00003333;
			1691: dout = 32'h00002222;
			1692: dout = 32'h00001111;
			1693: dout = 32'h00000000;
			1694: dout = 32'h00000000;
			1695: dout = 32'h00000000;
			1696: dout = 32'h00000000;
			1697: dout = 32'h00000000;
			1698: dout = 32'h00000000;
			1699: dout = 32'h00000000;
			1700: dout = 32'h00000000;
			1701: dout = 32'h00000000;
			1702: dout = 32'h00000000;
			1703: dout = 32'h00000000;
			1704: dout = 32'h00000000;
			1705: dout = 32'h00000000;
			1706: dout = 32'h00000000;
			1707: dout = 32'h00000000;
			1708: dout = 32'h00000000;
			1709: dout = 32'h00000000;
			1710: dout = 32'h00000000;
			1711: dout = 32'h00000000;
			1712: dout = 32'h00000000;
			1713: dout = 32'h00000000;
			1714: dout = 32'h00000000;
			1715: dout = 32'h00000000;
			1716: dout = 32'h00000000;
			1717: dout = 32'h00000000;
			1718: dout = 32'h00000000;
			1719: dout = 32'h00000000;
			1720: dout = 32'h00000000;
			1721: dout = 32'h00000000;
			1722: dout = 32'h00000000;
			1723: dout = 32'h00000000;
			1724: dout = 32'h00000000;
			1725: dout = 32'h00000000;
			1726: dout = 32'h00000000;
			1727: dout = 32'h00000000;
			1728: dout = 32'h00bf00dc;
			1729: dout = 32'h00001111;
			1730: dout = 32'h00002222;
			1731: dout = 32'h00003333;
			1732: dout = 32'h00004444;
			1733: dout = 32'h00005555;
			1734: dout = 32'h00006666;
			1735: dout = 32'h00007777;
			1736: dout = 32'h00008888;
			1737: dout = 32'h00009999;
			1738: dout = 32'h0000aaaa;
			1739: dout = 32'h0000bbbb;
			1740: dout = 32'h0000cccc;
			1741: dout = 32'h0000dddd;
			1742: dout = 32'h0000eeee;
			1743: dout = 32'h00010000;
			1744: dout = 32'h0000f000;
			1745: dout = 32'h0000e000;
			1746: dout = 32'h0000d000;
			1747: dout = 32'h0000c000;
			1748: dout = 32'h0000b000;
			1749: dout = 32'h0000a000;
			1750: dout = 32'h00009000;
			1751: dout = 32'h00008000;
			1752: dout = 32'h00007000;
			1753: dout = 32'h00006000;
			1754: dout = 32'h00005000;
			1755: dout = 32'h00004000;
			1756: dout = 32'h00003000;
			1757: dout = 32'h00002000;
			1758: dout = 32'h00001000;
			1759: dout = 32'h00000000;
			1760: dout = 32'h00000000;
			1761: dout = 32'h00000000;
			1762: dout = 32'h00000000;
			1763: dout = 32'h00000000;
			1764: dout = 32'h00000000;
			1765: dout = 32'h00000000;
			1766: dout = 32'h00000000;
			1767: dout = 32'h00000000;
			1768: dout = 32'h00000000;
			1769: dout = 32'h00000000;
			1770: dout = 32'h00000000;
			1771: dout = 32'h00000000;
			1772: dout = 32'h00000000;
			1773: dout = 32'h00000000;
			1774: dout = 32'h00000000;
			1775: dout = 32'h00000000;
			1776: dout = 32'h00000000;
			1777: dout = 32'h00000000;
			1778: dout = 32'h00000000;
			1779: dout = 32'h00000000;
			1780: dout = 32'h00000000;
			1781: dout = 32'h00000000;
			1782: dout = 32'h00000000;
			1783: dout = 32'h00000000;
			1784: dout = 32'h00000000;
			1785: dout = 32'h00000000;
			1786: dout = 32'h00000000;
			1787: dout = 32'h00000000;
			1788: dout = 32'h00000000;
			1789: dout = 32'h00000000;
			1790: dout = 32'h00000000;
			1791: dout = 32'h00000000;
			1792: dout = 32'h00ce00ed;
			1793: dout = 32'h00001000;
			1794: dout = 32'h00002000;
			1795: dout = 32'h00003000;
			1796: dout = 32'h00004000;
			1797: dout = 32'h00005000;
			1798: dout = 32'h00006000;
			1799: dout = 32'h00007000;
			1800: dout = 32'h00008000;
			1801: dout = 32'h00009000;
			1802: dout = 32'h0000a000;
			1803: dout = 32'h0000b000;
			1804: dout = 32'h0000c000;
			1805: dout = 32'h0000d000;
			1806: dout = 32'h0000e000;
			1807: dout = 32'h0000f000;
			1808: dout = 32'h00010000;
			1809: dout = 32'h0000f0f0;
			1810: dout = 32'h0000e1e1;
			1811: dout = 32'h0000d2d2;
			1812: dout = 32'h0000c3c3;
			1813: dout = 32'h0000b4b4;
			1814: dout = 32'h0000a5a5;
			1815: dout = 32'h00009696;
			1816: dout = 32'h00008787;
			1817: dout = 32'h00007878;
			1818: dout = 32'h00006969;
			1819: dout = 32'h00005a5a;
			1820: dout = 32'h00004b4b;
			1821: dout = 32'h00003c3c;
			1822: dout = 32'h00002d2d;
			1823: dout = 32'h00001e1e;
			1824: dout = 32'h00000f0f;
			1825: dout = 32'h00000000;
			1826: dout = 32'h00000000;
			1827: dout = 32'h00000000;
			1828: dout = 32'h00000000;
			1829: dout = 32'h00000000;
			1830: dout = 32'h00000000;
			1831: dout = 32'h00000000;
			1832: dout = 32'h00000000;
			1833: dout = 32'h00000000;
			1834: dout = 32'h00000000;
			1835: dout = 32'h00000000;
			1836: dout = 32'h00000000;
			1837: dout = 32'h00000000;
			1838: dout = 32'h00000000;
			1839: dout = 32'h00000000;
			1840: dout = 32'h00000000;
			1841: dout = 32'h00000000;
			1842: dout = 32'h00000000;
			1843: dout = 32'h00000000;
			1844: dout = 32'h00000000;
			1845: dout = 32'h00000000;
			1846: dout = 32'h00000000;
			1847: dout = 32'h00000000;
			1848: dout = 32'h00000000;
			1849: dout = 32'h00000000;
			1850: dout = 32'h00000000;
			1851: dout = 32'h00000000;
			1852: dout = 32'h00000000;
			1853: dout = 32'h00000000;
			1854: dout = 32'h00000000;
			1855: dout = 32'h00000000;
			1856: dout = 32'h00de00ff;
			1857: dout = 32'h00000f0f;
			1858: dout = 32'h00001e1e;
			1859: dout = 32'h00002d2d;
			1860: dout = 32'h00003c3c;
			1861: dout = 32'h00004b4b;
			1862: dout = 32'h00005a5a;
			1863: dout = 32'h00006969;
			1864: dout = 32'h00007878;
			1865: dout = 32'h00008787;
			1866: dout = 32'h00009696;
			1867: dout = 32'h0000a5a5;
			1868: dout = 32'h0000b4b4;
			1869: dout = 32'h0000c3c3;
			1870: dout = 32'h0000d2d2;
			1871: dout = 32'h0000e1e1;
			1872: dout = 32'h0000f0f0;
			1873: dout = 32'h00010000;
			1874: dout = 32'h0000f1c7;
			1875: dout = 32'h0000e38e;
			1876: dout = 32'h0000d555;
			1877: dout = 32'h0000c71c;
			1878: dout = 32'h0000b8e3;
			1879: dout = 32'h0000aaaa;
			1880: dout = 32'h00009c71;
			1881: dout = 32'h00008e38;
			1882: dout = 32'h00008000;
			1883: dout = 32'h000071c7;
			1884: dout = 32'h0000638e;
			1885: dout = 32'h00005555;
			1886: dout = 32'h0000471c;
			1887: dout = 32'h000038e3;
			1888: dout = 32'h00002aaa;
			1889: dout = 32'h00001c71;
			1890: dout = 32'h00000e38;
			1891: dout = 32'h00000000;
			1892: dout = 32'h00000000;
			1893: dout = 32'h00000000;
			1894: dout = 32'h00000000;
			1895: dout = 32'h00000000;
			1896: dout = 32'h00000000;
			1897: dout = 32'h00000000;
			1898: dout = 32'h00000000;
			1899: dout = 32'h00000000;
			1900: dout = 32'h00000000;
			1901: dout = 32'h00000000;
			1902: dout = 32'h00000000;
			1903: dout = 32'h00000000;
			1904: dout = 32'h00000000;
			1905: dout = 32'h00000000;
			1906: dout = 32'h00000000;
			1907: dout = 32'h00000000;
			1908: dout = 32'h00000000;
			1909: dout = 32'h00000000;
			1910: dout = 32'h00000000;
			1911: dout = 32'h00000000;
			1912: dout = 32'h00000000;
			1913: dout = 32'h00000000;
			1914: dout = 32'h00000000;
			1915: dout = 32'h00000000;
			1916: dout = 32'h00000000;
			1917: dout = 32'h00000000;
			1918: dout = 32'h00000000;
			1919: dout = 32'h00000000;
			1920: dout = 32'h00ef0112;
			1921: dout = 32'h00000e38;
			1922: dout = 32'h00001c71;
			1923: dout = 32'h00002aaa;
			1924: dout = 32'h000038e3;
			1925: dout = 32'h0000471c;
			1926: dout = 32'h00005555;
			1927: dout = 32'h0000638e;
			1928: dout = 32'h000071c7;
			1929: dout = 32'h00008000;
			1930: dout = 32'h00008e38;
			1931: dout = 32'h00009c71;
			1932: dout = 32'h0000aaaa;
			1933: dout = 32'h0000b8e3;
			1934: dout = 32'h0000c71c;
			1935: dout = 32'h0000d555;
			1936: dout = 32'h0000e38e;
			1937: dout = 32'h0000f1c7;
			1938: dout = 32'h00010000;
			1939: dout = 32'h0000f286;
			1940: dout = 32'h0000e50d;
			1941: dout = 32'h0000d794;
			1942: dout = 32'h0000ca1a;
			1943: dout = 32'h0000bca1;
			1944: dout = 32'h0000af28;
			1945: dout = 32'h0000a1af;
			1946: dout = 32'h00009435;
			1947: dout = 32'h000086bc;
			1948: dout = 32'h00007943;
			1949: dout = 32'h00006bca;
			1950: dout = 32'h00005e50;
			1951: dout = 32'h000050d7;
			1952: dout = 32'h0000435e;
			1953: dout = 32'h000035e5;
			1954: dout = 32'h0000286b;
			1955: dout = 32'h00001af2;
			1956: dout = 32'h00000d79;
			1957: dout = 32'h00000000;
			1958: dout = 32'h00000000;
			1959: dout = 32'h00000000;
			1960: dout = 32'h00000000;
			1961: dout = 32'h00000000;
			1962: dout = 32'h00000000;
			1963: dout = 32'h00000000;
			1964: dout = 32'h00000000;
			1965: dout = 32'h00000000;
			1966: dout = 32'h00000000;
			1967: dout = 32'h00000000;
			1968: dout = 32'h00000000;
			1969: dout = 32'h00000000;
			1970: dout = 32'h00000000;
			1971: dout = 32'h00000000;
			1972: dout = 32'h00000000;
			1973: dout = 32'h00000000;
			1974: dout = 32'h00000000;
			1975: dout = 32'h00000000;
			1976: dout = 32'h00000000;
			1977: dout = 32'h00000000;
			1978: dout = 32'h00000000;
			1979: dout = 32'h00000000;
			1980: dout = 32'h00000000;
			1981: dout = 32'h00000000;
			1982: dout = 32'h00000000;
			1983: dout = 32'h00000000;
			1984: dout = 32'h01010127;
			1985: dout = 32'h00000d79;
			1986: dout = 32'h00001af2;
			1987: dout = 32'h0000286b;
			1988: dout = 32'h000035e5;
			1989: dout = 32'h0000435e;
			1990: dout = 32'h000050d7;
			1991: dout = 32'h00005e50;
			1992: dout = 32'h00006bca;
			1993: dout = 32'h00007943;
			1994: dout = 32'h000086bc;
			1995: dout = 32'h00009435;
			1996: dout = 32'h0000a1af;
			1997: dout = 32'h0000af28;
			1998: dout = 32'h0000bca1;
			1999: dout = 32'h0000ca1a;
			2000: dout = 32'h0000d794;
			2001: dout = 32'h0000e50d;
			2002: dout = 32'h0000f286;
			2003: dout = 32'h00010000;
			2004: dout = 32'h0000f3cf;
			2005: dout = 32'h0000e79e;
			2006: dout = 32'h0000db6d;
			2007: dout = 32'h0000cf3c;
			2008: dout = 32'h0000c30c;
			2009: dout = 32'h0000b6db;
			2010: dout = 32'h0000aaaa;
			2011: dout = 32'h00009e79;
			2012: dout = 32'h00009249;
			2013: dout = 32'h00008618;
			2014: dout = 32'h000079e7;
			2015: dout = 32'h00006db6;
			2016: dout = 32'h00006186;
			2017: dout = 32'h00005555;
			2018: dout = 32'h00004924;
			2019: dout = 32'h00003cf3;
			2020: dout = 32'h000030c3;
			2021: dout = 32'h00002492;
			2022: dout = 32'h00001861;
			2023: dout = 32'h00000c30;
			2024: dout = 32'h00000000;
			2025: dout = 32'h00000000;
			2026: dout = 32'h00000000;
			2027: dout = 32'h00000000;
			2028: dout = 32'h00000000;
			2029: dout = 32'h00000000;
			2030: dout = 32'h00000000;
			2031: dout = 32'h00000000;
			2032: dout = 32'h00000000;
			2033: dout = 32'h00000000;
			2034: dout = 32'h00000000;
			2035: dout = 32'h00000000;
			2036: dout = 32'h00000000;
			2037: dout = 32'h00000000;
			2038: dout = 32'h00000000;
			2039: dout = 32'h00000000;
			2040: dout = 32'h00000000;
			2041: dout = 32'h00000000;
			2042: dout = 32'h00000000;
			2043: dout = 32'h00000000;
			2044: dout = 32'h00000000;
			2045: dout = 32'h00000000;
			2046: dout = 32'h00000000;
			2047: dout = 32'h00000000;
			2048: dout = 32'h0114013c;
			2049: dout = 32'h00000c30;
			2050: dout = 32'h00001861;
			2051: dout = 32'h00002492;
			2052: dout = 32'h000030c3;
			2053: dout = 32'h00003cf3;
			2054: dout = 32'h00004924;
			2055: dout = 32'h00005555;
			2056: dout = 32'h00006186;
			2057: dout = 32'h00006db6;
			2058: dout = 32'h000079e7;
			2059: dout = 32'h00008618;
			2060: dout = 32'h00009249;
			2061: dout = 32'h00009e79;
			2062: dout = 32'h0000aaaa;
			2063: dout = 32'h0000b6db;
			2064: dout = 32'h0000c30c;
			2065: dout = 32'h0000cf3c;
			2066: dout = 32'h0000db6d;
			2067: dout = 32'h0000e79e;
			2068: dout = 32'h0000f3cf;
			2069: dout = 32'h00010000;
			2070: dout = 32'h0000f3cf;
			2071: dout = 32'h0000e79e;
			2072: dout = 32'h0000db6d;
			2073: dout = 32'h0000cf3c;
			2074: dout = 32'h0000c30c;
			2075: dout = 32'h0000b6db;
			2076: dout = 32'h0000aaaa;
			2077: dout = 32'h00009e79;
			2078: dout = 32'h00009249;
			2079: dout = 32'h00008618;
			2080: dout = 32'h000079e7;
			2081: dout = 32'h00006db6;
			2082: dout = 32'h00006186;
			2083: dout = 32'h00005555;
			2084: dout = 32'h00004924;
			2085: dout = 32'h00003cf3;
			2086: dout = 32'h000030c3;
			2087: dout = 32'h00002492;
			2088: dout = 32'h00001861;
			2089: dout = 32'h00000c30;
			2090: dout = 32'h00000000;
			2091: dout = 32'h00000000;
			2092: dout = 32'h00000000;
			2093: dout = 32'h00000000;
			2094: dout = 32'h00000000;
			2095: dout = 32'h00000000;
			2096: dout = 32'h00000000;
			2097: dout = 32'h00000000;
			2098: dout = 32'h00000000;
			2099: dout = 32'h00000000;
			2100: dout = 32'h00000000;
			2101: dout = 32'h00000000;
			2102: dout = 32'h00000000;
			2103: dout = 32'h00000000;
			2104: dout = 32'h00000000;
			2105: dout = 32'h00000000;
			2106: dout = 32'h00000000;
			2107: dout = 32'h00000000;
			2108: dout = 32'h00000000;
			2109: dout = 32'h00000000;
			2110: dout = 32'h00000000;
			2111: dout = 32'h00000000;
			2112: dout = 32'h01290153;
			2113: dout = 32'h00000c30;
			2114: dout = 32'h00001861;
			2115: dout = 32'h00002492;
			2116: dout = 32'h000030c3;
			2117: dout = 32'h00003cf3;
			2118: dout = 32'h00004924;
			2119: dout = 32'h00005555;
			2120: dout = 32'h00006186;
			2121: dout = 32'h00006db6;
			2122: dout = 32'h000079e7;
			2123: dout = 32'h00008618;
			2124: dout = 32'h00009249;
			2125: dout = 32'h00009e79;
			2126: dout = 32'h0000aaaa;
			2127: dout = 32'h0000b6db;
			2128: dout = 32'h0000c30c;
			2129: dout = 32'h0000cf3c;
			2130: dout = 32'h0000db6d;
			2131: dout = 32'h0000e79e;
			2132: dout = 32'h0000f3cf;
			2133: dout = 32'h00010000;
			2134: dout = 32'h0000f4de;
			2135: dout = 32'h0000e9bd;
			2136: dout = 32'h0000de9b;
			2137: dout = 32'h0000d37a;
			2138: dout = 32'h0000c859;
			2139: dout = 32'h0000bd37;
			2140: dout = 32'h0000b216;
			2141: dout = 32'h0000a6f4;
			2142: dout = 32'h00009bd3;
			2143: dout = 32'h000090b2;
			2144: dout = 32'h00008590;
			2145: dout = 32'h00007a6f;
			2146: dout = 32'h00006f4d;
			2147: dout = 32'h0000642c;
			2148: dout = 32'h0000590b;
			2149: dout = 32'h00004de9;
			2150: dout = 32'h000042c8;
			2151: dout = 32'h000037a6;
			2152: dout = 32'h00002c85;
			2153: dout = 32'h00002164;
			2154: dout = 32'h00001642;
			2155: dout = 32'h00000b21;
			2156: dout = 32'h00000000;
			2157: dout = 32'h00000000;
			2158: dout = 32'h00000000;
			2159: dout = 32'h00000000;
			2160: dout = 32'h00000000;
			2161: dout = 32'h00000000;
			2162: dout = 32'h00000000;
			2163: dout = 32'h00000000;
			2164: dout = 32'h00000000;
			2165: dout = 32'h00000000;
			2166: dout = 32'h00000000;
			2167: dout = 32'h00000000;
			2168: dout = 32'h00000000;
			2169: dout = 32'h00000000;
			2170: dout = 32'h00000000;
			2171: dout = 32'h00000000;
			2172: dout = 32'h00000000;
			2173: dout = 32'h00000000;
			2174: dout = 32'h00000000;
			2175: dout = 32'h00000000;
			2176: dout = 32'h013e016c;
			2177: dout = 32'h00000b21;
			2178: dout = 32'h00001642;
			2179: dout = 32'h00002164;
			2180: dout = 32'h00002c85;
			2181: dout = 32'h000037a6;
			2182: dout = 32'h000042c8;
			2183: dout = 32'h00004de9;
			2184: dout = 32'h0000590b;
			2185: dout = 32'h0000642c;
			2186: dout = 32'h00006f4d;
			2187: dout = 32'h00007a6f;
			2188: dout = 32'h00008590;
			2189: dout = 32'h000090b2;
			2190: dout = 32'h00009bd3;
			2191: dout = 32'h0000a6f4;
			2192: dout = 32'h0000b216;
			2193: dout = 32'h0000bd37;
			2194: dout = 32'h0000c859;
			2195: dout = 32'h0000d37a;
			2196: dout = 32'h0000de9b;
			2197: dout = 32'h0000e9bd;
			2198: dout = 32'h0000f4de;
			2199: dout = 32'h00010000;
			2200: dout = 32'h0000f5c2;
			2201: dout = 32'h0000eb85;
			2202: dout = 32'h0000e147;
			2203: dout = 32'h0000d70a;
			2204: dout = 32'h0000cccc;
			2205: dout = 32'h0000c28f;
			2206: dout = 32'h0000b851;
			2207: dout = 32'h0000ae14;
			2208: dout = 32'h0000a3d7;
			2209: dout = 32'h00009999;
			2210: dout = 32'h00008f5c;
			2211: dout = 32'h0000851e;
			2212: dout = 32'h00007ae1;
			2213: dout = 32'h000070a3;
			2214: dout = 32'h00006666;
			2215: dout = 32'h00005c28;
			2216: dout = 32'h000051eb;
			2217: dout = 32'h000047ae;
			2218: dout = 32'h00003d70;
			2219: dout = 32'h00003333;
			2220: dout = 32'h000028f5;
			2221: dout = 32'h00001eb8;
			2222: dout = 32'h0000147a;
			2223: dout = 32'h00000a3d;
			2224: dout = 32'h00000000;
			2225: dout = 32'h00000000;
			2226: dout = 32'h00000000;
			2227: dout = 32'h00000000;
			2228: dout = 32'h00000000;
			2229: dout = 32'h00000000;
			2230: dout = 32'h00000000;
			2231: dout = 32'h00000000;
			2232: dout = 32'h00000000;
			2233: dout = 32'h00000000;
			2234: dout = 32'h00000000;
			2235: dout = 32'h00000000;
			2236: dout = 32'h00000000;
			2237: dout = 32'h00000000;
			2238: dout = 32'h00000000;
			2239: dout = 32'h00000000;
			2240: dout = 32'h01550186;
			2241: dout = 32'h00000a3d;
			2242: dout = 32'h0000147a;
			2243: dout = 32'h00001eb8;
			2244: dout = 32'h000028f5;
			2245: dout = 32'h00003333;
			2246: dout = 32'h00003d70;
			2247: dout = 32'h000047ae;
			2248: dout = 32'h000051eb;
			2249: dout = 32'h00005c28;
			2250: dout = 32'h00006666;
			2251: dout = 32'h000070a3;
			2252: dout = 32'h00007ae1;
			2253: dout = 32'h0000851e;
			2254: dout = 32'h00008f5c;
			2255: dout = 32'h00009999;
			2256: dout = 32'h0000a3d7;
			2257: dout = 32'h0000ae14;
			2258: dout = 32'h0000b851;
			2259: dout = 32'h0000c28f;
			2260: dout = 32'h0000cccc;
			2261: dout = 32'h0000d70a;
			2262: dout = 32'h0000e147;
			2263: dout = 32'h0000eb85;
			2264: dout = 32'h0000f5c2;
			2265: dout = 32'h00010000;
			2266: dout = 32'h0000f627;
			2267: dout = 32'h0000ec4e;
			2268: dout = 32'h0000e276;
			2269: dout = 32'h0000d89d;
			2270: dout = 32'h0000cec4;
			2271: dout = 32'h0000c4ec;
			2272: dout = 32'h0000bb13;
			2273: dout = 32'h0000b13b;
			2274: dout = 32'h0000a762;
			2275: dout = 32'h00009d89;
			2276: dout = 32'h000093b1;
			2277: dout = 32'h000089d8;
			2278: dout = 32'h00008000;
			2279: dout = 32'h00007627;
			2280: dout = 32'h00006c4e;
			2281: dout = 32'h00006276;
			2282: dout = 32'h0000589d;
			2283: dout = 32'h00004ec4;
			2284: dout = 32'h000044ec;
			2285: dout = 32'h00003b13;
			2286: dout = 32'h0000313b;
			2287: dout = 32'h00002762;
			2288: dout = 32'h00001d89;
			2289: dout = 32'h000013b1;
			2290: dout = 32'h000009d8;
			2291: dout = 32'h00000000;
			2292: dout = 32'h00000000;
			2293: dout = 32'h00000000;
			2294: dout = 32'h00000000;
			2295: dout = 32'h00000000;
			2296: dout = 32'h00000000;
			2297: dout = 32'h00000000;
			2298: dout = 32'h00000000;
			2299: dout = 32'h00000000;
			2300: dout = 32'h00000000;
			2301: dout = 32'h00000000;
			2302: dout = 32'h00000000;
			2303: dout = 32'h00000000;
			2304: dout = 32'h016e01a1;
			2305: dout = 32'h000009d8;
			2306: dout = 32'h000013b1;
			2307: dout = 32'h00001d89;
			2308: dout = 32'h00002762;
			2309: dout = 32'h0000313b;
			2310: dout = 32'h00003b13;
			2311: dout = 32'h000044ec;
			2312: dout = 32'h00004ec4;
			2313: dout = 32'h0000589d;
			2314: dout = 32'h00006276;
			2315: dout = 32'h00006c4e;
			2316: dout = 32'h00007627;
			2317: dout = 32'h00008000;
			2318: dout = 32'h000089d8;
			2319: dout = 32'h000093b1;
			2320: dout = 32'h00009d89;
			2321: dout = 32'h0000a762;
			2322: dout = 32'h0000b13b;
			2323: dout = 32'h0000bb13;
			2324: dout = 32'h0000c4ec;
			2325: dout = 32'h0000cec4;
			2326: dout = 32'h0000d89d;
			2327: dout = 32'h0000e276;
			2328: dout = 32'h0000ec4e;
			2329: dout = 32'h0000f627;
			2330: dout = 32'h00010000;
			2331: dout = 32'h0000f684;
			2332: dout = 32'h0000ed09;
			2333: dout = 32'h0000e38e;
			2334: dout = 32'h0000da12;
			2335: dout = 32'h0000d097;
			2336: dout = 32'h0000c71c;
			2337: dout = 32'h0000bda1;
			2338: dout = 32'h0000b425;
			2339: dout = 32'h0000aaaa;
			2340: dout = 32'h0000a12f;
			2341: dout = 32'h000097b4;
			2342: dout = 32'h00008e38;
			2343: dout = 32'h000084bd;
			2344: dout = 32'h00007b42;
			2345: dout = 32'h000071c7;
			2346: dout = 32'h0000684b;
			2347: dout = 32'h00005ed0;
			2348: dout = 32'h00005555;
			2349: dout = 32'h00004bda;
			2350: dout = 32'h0000425e;
			2351: dout = 32'h000038e3;
			2352: dout = 32'h00002f68;
			2353: dout = 32'h000025ed;
			2354: dout = 32'h00001c71;
			2355: dout = 32'h000012f6;
			2356: dout = 32'h0000097b;
			2357: dout = 32'h00000000;
			2358: dout = 32'h00000000;
			2359: dout = 32'h00000000;
			2360: dout = 32'h00000000;
			2361: dout = 32'h00000000;
			2362: dout = 32'h00000000;
			2363: dout = 32'h00000000;
			2364: dout = 32'h00000000;
			2365: dout = 32'h00000000;
			2366: dout = 32'h00000000;
			2367: dout = 32'h00000000;
			2368: dout = 32'h018801bf;
			2369: dout = 32'h0000097b;
			2370: dout = 32'h000012f6;
			2371: dout = 32'h00001c71;
			2372: dout = 32'h000025ed;
			2373: dout = 32'h00002f68;
			2374: dout = 32'h000038e3;
			2375: dout = 32'h0000425e;
			2376: dout = 32'h00004bda;
			2377: dout = 32'h00005555;
			2378: dout = 32'h00005ed0;
			2379: dout = 32'h0000684b;
			2380: dout = 32'h000071c7;
			2381: dout = 32'h00007b42;
			2382: dout = 32'h000084bd;
			2383: dout = 32'h00008e38;
			2384: dout = 32'h000097b4;
			2385: dout = 32'h0000a12f;
			2386: dout = 32'h0000aaaa;
			2387: dout = 32'h0000b425;
			2388: dout = 32'h0000bda1;
			2389: dout = 32'h0000c71c;
			2390: dout = 32'h0000d097;
			2391: dout = 32'h0000da12;
			2392: dout = 32'h0000e38e;
			2393: dout = 32'h0000ed09;
			2394: dout = 32'h0000f684;
			2395: dout = 32'h00010000;
			2396: dout = 32'h0000f777;
			2397: dout = 32'h0000eeee;
			2398: dout = 32'h0000e666;
			2399: dout = 32'h0000dddd;
			2400: dout = 32'h0000d555;
			2401: dout = 32'h0000cccc;
			2402: dout = 32'h0000c444;
			2403: dout = 32'h0000bbbb;
			2404: dout = 32'h0000b333;
			2405: dout = 32'h0000aaaa;
			2406: dout = 32'h0000a222;
			2407: dout = 32'h00009999;
			2408: dout = 32'h00009111;
			2409: dout = 32'h00008888;
			2410: dout = 32'h00008000;
			2411: dout = 32'h00007777;
			2412: dout = 32'h00006eee;
			2413: dout = 32'h00006666;
			2414: dout = 32'h00005ddd;
			2415: dout = 32'h00005555;
			2416: dout = 32'h00004ccc;
			2417: dout = 32'h00004444;
			2418: dout = 32'h00003bbb;
			2419: dout = 32'h00003333;
			2420: dout = 32'h00002aaa;
			2421: dout = 32'h00002222;
			2422: dout = 32'h00001999;
			2423: dout = 32'h00001111;
			2424: dout = 32'h00000888;
			2425: dout = 32'h00000000;
			2426: dout = 32'h00000000;
			2427: dout = 32'h00000000;
			2428: dout = 32'h00000000;
			2429: dout = 32'h00000000;
			2430: dout = 32'h00000000;
			2431: dout = 32'h00000000;
			2432: dout = 32'h01a301de;
			2433: dout = 32'h00000888;
			2434: dout = 32'h00001111;
			2435: dout = 32'h00001999;
			2436: dout = 32'h00002222;
			2437: dout = 32'h00002aaa;
			2438: dout = 32'h00003333;
			2439: dout = 32'h00003bbb;
			2440: dout = 32'h00004444;
			2441: dout = 32'h00004ccc;
			2442: dout = 32'h00005555;
			2443: dout = 32'h00005ddd;
			2444: dout = 32'h00006666;
			2445: dout = 32'h00006eee;
			2446: dout = 32'h00007777;
			2447: dout = 32'h00008000;
			2448: dout = 32'h00008888;
			2449: dout = 32'h00009111;
			2450: dout = 32'h00009999;
			2451: dout = 32'h0000a222;
			2452: dout = 32'h0000aaaa;
			2453: dout = 32'h0000b333;
			2454: dout = 32'h0000bbbb;
			2455: dout = 32'h0000c444;
			2456: dout = 32'h0000cccc;
			2457: dout = 32'h0000d555;
			2458: dout = 32'h0000dddd;
			2459: dout = 32'h0000e666;
			2460: dout = 32'h0000eeee;
			2461: dout = 32'h0000f777;
			2462: dout = 32'h00010000;
			2463: dout = 32'h0000f7bd;
			2464: dout = 32'h0000ef7b;
			2465: dout = 32'h0000e739;
			2466: dout = 32'h0000def7;
			2467: dout = 32'h0000d6b5;
			2468: dout = 32'h0000ce73;
			2469: dout = 32'h0000c631;
			2470: dout = 32'h0000bdef;
			2471: dout = 32'h0000b5ad;
			2472: dout = 32'h0000ad6b;
			2473: dout = 32'h0000a529;
			2474: dout = 32'h00009ce7;
			2475: dout = 32'h000094a5;
			2476: dout = 32'h00008c63;
			2477: dout = 32'h00008421;
			2478: dout = 32'h00007bde;
			2479: dout = 32'h0000739c;
			2480: dout = 32'h00006b5a;
			2481: dout = 32'h00006318;
			2482: dout = 32'h00005ad6;
			2483: dout = 32'h00005294;
			2484: dout = 32'h00004a52;
			2485: dout = 32'h00004210;
			2486: dout = 32'h000039ce;
			2487: dout = 32'h0000318c;
			2488: dout = 32'h0000294a;
			2489: dout = 32'h00002108;
			2490: dout = 32'h000018c6;
			2491: dout = 32'h00001084;
			2492: dout = 32'h00000842;
			2493: dout = 32'h00000000;
			2494: dout = 32'h00000000;
			2495: dout = 32'h00000000;
			2496: dout = 32'h01c101ff;
			2497: dout = 32'h00000842;
			2498: dout = 32'h00001084;
			2499: dout = 32'h000018c6;
			2500: dout = 32'h00002108;
			2501: dout = 32'h0000294a;
			2502: dout = 32'h0000318c;
			2503: dout = 32'h000039ce;
			2504: dout = 32'h00004210;
			2505: dout = 32'h00004a52;
			2506: dout = 32'h00005294;
			2507: dout = 32'h00005ad6;
			2508: dout = 32'h00006318;
			2509: dout = 32'h00006b5a;
			2510: dout = 32'h0000739c;
			2511: dout = 32'h00007bde;
			2512: dout = 32'h00008421;
			2513: dout = 32'h00008c63;
			2514: dout = 32'h000094a5;
			2515: dout = 32'h00009ce7;
			2516: dout = 32'h0000a529;
			2517: dout = 32'h0000ad6b;
			2518: dout = 32'h0000b5ad;
			2519: dout = 32'h0000bdef;
			2520: dout = 32'h0000c631;
			2521: dout = 32'h0000ce73;
			2522: dout = 32'h0000d6b5;
			2523: dout = 32'h0000def7;
			2524: dout = 32'h0000e739;
			2525: dout = 32'h0000ef7b;
			2526: dout = 32'h0000f7bd;
			2527: dout = 32'h00010000;
			2528: dout = 32'h0000f83e;
			2529: dout = 32'h0000f07c;
			2530: dout = 32'h0000e8ba;
			2531: dout = 32'h0000e0f8;
			2532: dout = 32'h0000d936;
			2533: dout = 32'h0000d174;
			2534: dout = 32'h0000c9b2;
			2535: dout = 32'h0000c1f0;
			2536: dout = 32'h0000ba2e;
			2537: dout = 32'h0000b26c;
			2538: dout = 32'h0000aaaa;
			2539: dout = 32'h0000a2e8;
			2540: dout = 32'h00009b26;
			2541: dout = 32'h00009364;
			2542: dout = 32'h00008ba2;
			2543: dout = 32'h000083e0;
			2544: dout = 32'h00007c1f;
			2545: dout = 32'h0000745d;
			2546: dout = 32'h00006c9b;
			2547: dout = 32'h000064d9;
			2548: dout = 32'h00005d17;
			2549: dout = 32'h00005555;
			2550: dout = 32'h00004d93;
			2551: dout = 32'h000045d1;
			2552: dout = 32'h00003e0f;
			2553: dout = 32'h0000364d;
			2554: dout = 32'h00002e8b;
			2555: dout = 32'h000026c9;
			2556: dout = 32'h00001f07;
			2557: dout = 32'h00001745;
			2558: dout = 32'h00000f83;
			2559: dout = 32'h000007c1;
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
	parameter F_WIDTH = 16;
	parameter ALPHA = 63569;
	parameter NUM_CEPS = 12;
	parameter NUM_MEL_FILTERS = 40;
	parameter FRAME_SIZE = 400;
	parameter FRAME_STEP = 160;
	parameter FFT_SIZE = 1024;
	parameter NFFT_LOG2 = 10;
	parameter PCM_FIFO_DEPTH = 32;
	parameter MEL_BANK_SIZE = 64;
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
	input wire [8:0] addr;
	output reg [127:0] dout;
	always @(*) begin
		if (_sv2v_0)
			;
		case (addr)
			0: dout = 128'h00000000000100000000000000000000;
			1: dout = 128'h000000000000fffefffffffffffffe6e;
			2: dout = 128'h000000000000fffbfffffffffffffcdc;
			3: dout = 128'h000000000000fff4fffffffffffffb4a;
			4: dout = 128'h000000000000ffecfffffffffffff9b8;
			5: dout = 128'h000000000000ffe1fffffffffffff826;
			6: dout = 128'h000000000000ffd3fffffffffffff694;
			7: dout = 128'h000000000000ffc3fffffffffffff502;
			8: dout = 128'h000000000000ffb1fffffffffffff371;
			9: dout = 128'h000000000000ff9cfffffffffffff1df;
			10: dout = 128'h000000000000ff84fffffffffffff04e;
			11: dout = 128'h000000000000ff6affffffffffffeebc;
			12: dout = 128'h000000000000ff4effffffffffffed2b;
			13: dout = 128'h000000000000ff2fffffffffffffeb9a;
			14: dout = 128'h000000000000ff0effffffffffffea0a;
			15: dout = 128'h000000000000feeaffffffffffffe879;
			16: dout = 128'h000000000000fec4ffffffffffffe6e9;
			17: dout = 128'h000000000000fe9bffffffffffffe559;
			18: dout = 128'h000000000000fe70ffffffffffffe3c9;
			19: dout = 128'h000000000000fe43ffffffffffffe239;
			20: dout = 128'h000000000000fe13ffffffffffffe0aa;
			21: dout = 128'h000000000000fde0ffffffffffffdf1b;
			22: dout = 128'h000000000000fdabffffffffffffdd8d;
			23: dout = 128'h000000000000fd74ffffffffffffdbfe;
			24: dout = 128'h000000000000fd3affffffffffffda70;
			25: dout = 128'h000000000000fcfeffffffffffffd8e3;
			26: dout = 128'h000000000000fcbfffffffffffffd756;
			27: dout = 128'h000000000000fc7effffffffffffd5c9;
			28: dout = 128'h000000000000fc3bffffffffffffd43c;
			29: dout = 128'h000000000000fbf5ffffffffffffd2b0;
			30: dout = 128'h000000000000fbacffffffffffffd125;
			31: dout = 128'h000000000000fb61ffffffffffffcf9a;
			32: dout = 128'h000000000000fb14ffffffffffffce0f;
			33: dout = 128'h000000000000fac5ffffffffffffcc85;
			34: dout = 128'h000000000000fa73ffffffffffffcafb;
			35: dout = 128'h000000000000fa1effffffffffffc972;
			36: dout = 128'h000000000000f9c7ffffffffffffc7e9;
			37: dout = 128'h000000000000f96effffffffffffc661;
			38: dout = 128'h000000000000f912ffffffffffffc4da;
			39: dout = 128'h000000000000f8b4ffffffffffffc353;
			40: dout = 128'h000000000000f853ffffffffffffc1cd;
			41: dout = 128'h000000000000f7f1ffffffffffffc047;
			42: dout = 128'h000000000000f78bffffffffffffbec2;
			43: dout = 128'h000000000000f724ffffffffffffbd3d;
			44: dout = 128'h000000000000f6baffffffffffffbbb9;
			45: dout = 128'h000000000000f64dffffffffffffba36;
			46: dout = 128'h000000000000f5deffffffffffffb8b3;
			47: dout = 128'h000000000000f56dffffffffffffb732;
			48: dout = 128'h000000000000f4faffffffffffffb5b0;
			49: dout = 128'h000000000000f484ffffffffffffb430;
			50: dout = 128'h000000000000f40bffffffffffffb2b0;
			51: dout = 128'h000000000000f391ffffffffffffb131;
			52: dout = 128'h000000000000f314ffffffffffffafb3;
			53: dout = 128'h000000000000f294ffffffffffffae36;
			54: dout = 128'h000000000000f213ffffffffffffacb9;
			55: dout = 128'h000000000000f18fffffffffffffab3d;
			56: dout = 128'h000000000000f109ffffffffffffa9c2;
			57: dout = 128'h000000000000f080ffffffffffffa848;
			58: dout = 128'h000000000000eff5ffffffffffffa6cf;
			59: dout = 128'h000000000000ef68ffffffffffffa556;
			60: dout = 128'h000000000000eed8ffffffffffffa3de;
			61: dout = 128'h000000000000ee46ffffffffffffa268;
			62: dout = 128'h000000000000edb2ffffffffffffa0f2;
			63: dout = 128'h000000000000ed1cffffffffffff9f7d;
			64: dout = 128'h000000000000ec83ffffffffffff9e09;
			65: dout = 128'h000000000000ebe8ffffffffffff9c96;
			66: dout = 128'h000000000000eb4bffffffffffff9b24;
			67: dout = 128'h000000000000eaabffffffffffff99b3;
			68: dout = 128'h000000000000ea09ffffffffffff9843;
			69: dout = 128'h000000000000e965ffffffffffff96d3;
			70: dout = 128'h000000000000e8bfffffffffffff9565;
			71: dout = 128'h000000000000e816ffffffffffff93f8;
			72: dout = 128'h000000000000e76bffffffffffff928c;
			73: dout = 128'h000000000000e6beffffffffffff9121;
			74: dout = 128'h000000000000e60fffffffffffff8fb7;
			75: dout = 128'h000000000000e55effffffffffff8e4f;
			76: dout = 128'h000000000000e4aaffffffffffff8ce7;
			77: dout = 128'h000000000000e3f4ffffffffffff8b80;
			78: dout = 128'h000000000000e33cffffffffffff8a1b;
			79: dout = 128'h000000000000e282ffffffffffff88b6;
			80: dout = 128'h000000000000e1c5ffffffffffff8753;
			81: dout = 128'h000000000000e106ffffffffffff85f1;
			82: dout = 128'h000000000000e046ffffffffffff8490;
			83: dout = 128'h000000000000df83ffffffffffff8330;
			84: dout = 128'h000000000000debeffffffffffff81d2;
			85: dout = 128'h000000000000ddf6ffffffffffff8075;
			86: dout = 128'h000000000000dd2dffffffffffff7f19;
			87: dout = 128'h000000000000dc61ffffffffffff7dbe;
			88: dout = 128'h000000000000db94ffffffffffff7c64;
			89: dout = 128'h000000000000dac4ffffffffffff7b0c;
			90: dout = 128'h000000000000d9f2ffffffffffff79b5;
			91: dout = 128'h000000000000d91effffffffffff785f;
			92: dout = 128'h000000000000d848ffffffffffff770b;
			93: dout = 128'h000000000000d770ffffffffffff75b8;
			94: dout = 128'h000000000000d695ffffffffffff7466;
			95: dout = 128'h000000000000d5b9ffffffffffff7316;
			96: dout = 128'h000000000000d4dbffffffffffff71c7;
			97: dout = 128'h000000000000d3faffffffffffff7079;
			98: dout = 128'h000000000000d318ffffffffffff6f2d;
			99: dout = 128'h000000000000d233ffffffffffff6de2;
			100: dout = 128'h000000000000d14dffffffffffff6c98;
			101: dout = 128'h000000000000d064ffffffffffff6b50;
			102: dout = 128'h000000000000cf7affffffffffff6a0a;
			103: dout = 128'h000000000000ce8dffffffffffff68c4;
			104: dout = 128'h000000000000cd9fffffffffffff6781;
			105: dout = 128'h000000000000ccaeffffffffffff663e;
			106: dout = 128'h000000000000cbbbffffffffffff64fe;
			107: dout = 128'h000000000000cac7ffffffffffff63be;
			108: dout = 128'h000000000000c9d1ffffffffffff6281;
			109: dout = 128'h000000000000c8d8ffffffffffff6144;
			110: dout = 128'h000000000000c7deffffffffffff600a;
			111: dout = 128'h000000000000c6e2ffffffffffff5ed1;
			112: dout = 128'h000000000000c5e4ffffffffffff5d99;
			113: dout = 128'h000000000000c4e3ffffffffffff5c63;
			114: dout = 128'h000000000000c3e2ffffffffffff5b2e;
			115: dout = 128'h000000000000c2deffffffffffff59fb;
			116: dout = 128'h000000000000c1d8ffffffffffff58ca;
			117: dout = 128'h000000000000c0d0ffffffffffff579a;
			118: dout = 128'h000000000000bfc7ffffffffffff566c;
			119: dout = 128'h000000000000bebcffffffffffff5540;
			120: dout = 128'h000000000000bdaeffffffffffff5415;
			121: dout = 128'h000000000000bca0ffffffffffff52ec;
			122: dout = 128'h000000000000bb8fffffffffffff51c5;
			123: dout = 128'h000000000000ba7cffffffffffff509f;
			124: dout = 128'h000000000000b968ffffffffffff4f7b;
			125: dout = 128'h000000000000b852ffffffffffff4e58;
			126: dout = 128'h000000000000b73affffffffffff4d38;
			127: dout = 128'h000000000000b620ffffffffffff4c19;
			128: dout = 128'h000000000000b504ffffffffffff4afc;
			129: dout = 128'h000000000000b3e7ffffffffffff49e0;
			130: dout = 128'h000000000000b2c8ffffffffffff48c6;
			131: dout = 128'h000000000000b1a8ffffffffffff47ae;
			132: dout = 128'h000000000000b085ffffffffffff4698;
			133: dout = 128'h000000000000af61ffffffffffff4584;
			134: dout = 128'h000000000000ae3bffffffffffff4471;
			135: dout = 128'h000000000000ad14ffffffffffff4360;
			136: dout = 128'h000000000000abebffffffffffff4252;
			137: dout = 128'h000000000000aac0ffffffffffff4144;
			138: dout = 128'h000000000000a994ffffffffffff4039;
			139: dout = 128'h000000000000a866ffffffffffff3f30;
			140: dout = 128'h000000000000a736ffffffffffff3e28;
			141: dout = 128'h000000000000a605ffffffffffff3d22;
			142: dout = 128'h000000000000a4d2ffffffffffff3c1e;
			143: dout = 128'h000000000000a39dffffffffffff3b1d;
			144: dout = 128'h000000000000a267ffffffffffff3a1c;
			145: dout = 128'h000000000000a12fffffffffffff391e;
			146: dout = 128'h0000000000009ff6ffffffffffff3822;
			147: dout = 128'h0000000000009ebcffffffffffff3728;
			148: dout = 128'h0000000000009d7fffffffffffff362f;
			149: dout = 128'h0000000000009c42ffffffffffff3539;
			150: dout = 128'h0000000000009b02ffffffffffff3445;
			151: dout = 128'h00000000000099c2ffffffffffff3352;
			152: dout = 128'h000000000000987fffffffffffff3261;
			153: dout = 128'h000000000000973cffffffffffff3173;
			154: dout = 128'h00000000000095f6ffffffffffff3086;
			155: dout = 128'h00000000000094b0ffffffffffff2f9c;
			156: dout = 128'h0000000000009368ffffffffffff2eb3;
			157: dout = 128'h000000000000921effffffffffff2dcd;
			158: dout = 128'h00000000000090d3ffffffffffff2ce8;
			159: dout = 128'h0000000000008f87ffffffffffff2c06;
			160: dout = 128'h0000000000008e39ffffffffffff2b25;
			161: dout = 128'h0000000000008ceaffffffffffff2a47;
			162: dout = 128'h0000000000008b9affffffffffff296b;
			163: dout = 128'h0000000000008a48ffffffffffff2890;
			164: dout = 128'h00000000000088f5ffffffffffff27b8;
			165: dout = 128'h00000000000087a1ffffffffffff26e2;
			166: dout = 128'h000000000000864bffffffffffff260e;
			167: dout = 128'h00000000000084f4ffffffffffff253c;
			168: dout = 128'h000000000000839cffffffffffff246c;
			169: dout = 128'h0000000000008242ffffffffffff239f;
			170: dout = 128'h00000000000080e7ffffffffffff22d3;
			171: dout = 128'h0000000000007f8bffffffffffff220a;
			172: dout = 128'h0000000000007e2effffffffffff2142;
			173: dout = 128'h0000000000007cd0ffffffffffff207d;
			174: dout = 128'h0000000000007b70ffffffffffff1fba;
			175: dout = 128'h0000000000007a0fffffffffffff1efa;
			176: dout = 128'h00000000000078adffffffffffff1e3b;
			177: dout = 128'h000000000000774affffffffffff1d7e;
			178: dout = 128'h00000000000075e5ffffffffffff1cc4;
			179: dout = 128'h0000000000007480ffffffffffff1c0c;
			180: dout = 128'h0000000000007319ffffffffffff1b56;
			181: dout = 128'h00000000000071b1ffffffffffff1aa2;
			182: dout = 128'h0000000000007049ffffffffffff19f1;
			183: dout = 128'h0000000000006edfffffffffffff1942;
			184: dout = 128'h0000000000006d74ffffffffffff1895;
			185: dout = 128'h0000000000006c08ffffffffffff17ea;
			186: dout = 128'h0000000000006a9bffffffffffff1741;
			187: dout = 128'h000000000000692dffffffffffff169b;
			188: dout = 128'h00000000000067bdffffffffffff15f7;
			189: dout = 128'h000000000000664dffffffffffff1555;
			190: dout = 128'h00000000000064dcffffffffffff14b5;
			191: dout = 128'h000000000000636affffffffffff1418;
			192: dout = 128'h00000000000061f7ffffffffffff137d;
			193: dout = 128'h0000000000006083ffffffffffff12e4;
			194: dout = 128'h0000000000005f0effffffffffff124e;
			195: dout = 128'h0000000000005d98ffffffffffff11ba;
			196: dout = 128'h0000000000005c22ffffffffffff1128;
			197: dout = 128'h0000000000005aaaffffffffffff1098;
			198: dout = 128'h0000000000005931ffffffffffff100b;
			199: dout = 128'h00000000000057b8ffffffffffff0f80;
			200: dout = 128'h000000000000563effffffffffff0ef7;
			201: dout = 128'h00000000000054c3ffffffffffff0e71;
			202: dout = 128'h0000000000005347ffffffffffff0ded;
			203: dout = 128'h00000000000051caffffffffffff0d6c;
			204: dout = 128'h000000000000504dffffffffffff0cec;
			205: dout = 128'h0000000000004ecfffffffffffff0c6f;
			206: dout = 128'h0000000000004d50ffffffffffff0bf5;
			207: dout = 128'h0000000000004bd0ffffffffffff0b7c;
			208: dout = 128'h0000000000004a50ffffffffffff0b06;
			209: dout = 128'h00000000000048ceffffffffffff0a93;
			210: dout = 128'h000000000000474dffffffffffff0a22;
			211: dout = 128'h00000000000045caffffffffffff09b3;
			212: dout = 128'h0000000000004447ffffffffffff0946;
			213: dout = 128'h00000000000042c3ffffffffffff08dc;
			214: dout = 128'h000000000000413effffffffffff0875;
			215: dout = 128'h0000000000003fb9ffffffffffff080f;
			216: dout = 128'h0000000000003e33ffffffffffff07ad;
			217: dout = 128'h0000000000003cadffffffffffff074c;
			218: dout = 128'h0000000000003b26ffffffffffff06ee;
			219: dout = 128'h000000000000399fffffffffffff0692;
			220: dout = 128'h0000000000003817ffffffffffff0639;
			221: dout = 128'h000000000000368effffffffffff05e2;
			222: dout = 128'h0000000000003505ffffffffffff058d;
			223: dout = 128'h000000000000337bffffffffffff053b;
			224: dout = 128'h00000000000031f1ffffffffffff04ec;
			225: dout = 128'h0000000000003066ffffffffffff049f;
			226: dout = 128'h0000000000002edbffffffffffff0454;
			227: dout = 128'h0000000000002d50ffffffffffff040b;
			228: dout = 128'h0000000000002bc4ffffffffffff03c5;
			229: dout = 128'h0000000000002a37ffffffffffff0382;
			230: dout = 128'h00000000000028aaffffffffffff0341;
			231: dout = 128'h000000000000271dffffffffffff0302;
			232: dout = 128'h0000000000002590ffffffffffff02c6;
			233: dout = 128'h0000000000002402ffffffffffff028c;
			234: dout = 128'h0000000000002273ffffffffffff0255;
			235: dout = 128'h00000000000020e5ffffffffffff0220;
			236: dout = 128'h0000000000001f56ffffffffffff01ed;
			237: dout = 128'h0000000000001dc7ffffffffffff01bd;
			238: dout = 128'h0000000000001c37ffffffffffff0190;
			239: dout = 128'h0000000000001aa7ffffffffffff0165;
			240: dout = 128'h0000000000001917ffffffffffff013c;
			241: dout = 128'h0000000000001787ffffffffffff0116;
			242: dout = 128'h00000000000015f6ffffffffffff00f2;
			243: dout = 128'h0000000000001466ffffffffffff00d1;
			244: dout = 128'h00000000000012d5ffffffffffff00b2;
			245: dout = 128'h0000000000001144ffffffffffff0096;
			246: dout = 128'h0000000000000fb2ffffffffffff007c;
			247: dout = 128'h0000000000000e21ffffffffffff0064;
			248: dout = 128'h0000000000000c8fffffffffffff004f;
			249: dout = 128'h0000000000000afdffffffffffff003d;
			250: dout = 128'h000000000000096cffffffffffff002d;
			251: dout = 128'h00000000000007daffffffffffff001f;
			252: dout = 128'h0000000000000648ffffffffffff0014;
			253: dout = 128'h00000000000004b6ffffffffffff000c;
			254: dout = 128'h0000000000000324ffffffffffff0005;
			255: dout = 128'h0000000000000192ffffffffffff0002;
			256: dout = 128'h0000000000000000ffffffffffff0000;
			257: dout = 128'hfffffffffffffe6effffffffffff0002;
			258: dout = 128'hfffffffffffffcdcffffffffffff0005;
			259: dout = 128'hfffffffffffffb4affffffffffff000c;
			260: dout = 128'hfffffffffffff9b8ffffffffffff0014;
			261: dout = 128'hfffffffffffff826ffffffffffff001f;
			262: dout = 128'hfffffffffffff694ffffffffffff002d;
			263: dout = 128'hfffffffffffff502ffffffffffff003d;
			264: dout = 128'hfffffffffffff371ffffffffffff004f;
			265: dout = 128'hfffffffffffff1dfffffffffffff0064;
			266: dout = 128'hfffffffffffff04effffffffffff007c;
			267: dout = 128'hffffffffffffeebcffffffffffff0096;
			268: dout = 128'hffffffffffffed2bffffffffffff00b2;
			269: dout = 128'hffffffffffffeb9affffffffffff00d1;
			270: dout = 128'hffffffffffffea0affffffffffff00f2;
			271: dout = 128'hffffffffffffe879ffffffffffff0116;
			272: dout = 128'hffffffffffffe6e9ffffffffffff013c;
			273: dout = 128'hffffffffffffe559ffffffffffff0165;
			274: dout = 128'hffffffffffffe3c9ffffffffffff0190;
			275: dout = 128'hffffffffffffe239ffffffffffff01bd;
			276: dout = 128'hffffffffffffe0aaffffffffffff01ed;
			277: dout = 128'hffffffffffffdf1bffffffffffff0220;
			278: dout = 128'hffffffffffffdd8dffffffffffff0255;
			279: dout = 128'hffffffffffffdbfeffffffffffff028c;
			280: dout = 128'hffffffffffffda70ffffffffffff02c6;
			281: dout = 128'hffffffffffffd8e3ffffffffffff0302;
			282: dout = 128'hffffffffffffd756ffffffffffff0341;
			283: dout = 128'hffffffffffffd5c9ffffffffffff0382;
			284: dout = 128'hffffffffffffd43cffffffffffff03c5;
			285: dout = 128'hffffffffffffd2b0ffffffffffff040b;
			286: dout = 128'hffffffffffffd125ffffffffffff0454;
			287: dout = 128'hffffffffffffcf9affffffffffff049f;
			288: dout = 128'hffffffffffffce0fffffffffffff04ec;
			289: dout = 128'hffffffffffffcc85ffffffffffff053b;
			290: dout = 128'hffffffffffffcafbffffffffffff058d;
			291: dout = 128'hffffffffffffc972ffffffffffff05e2;
			292: dout = 128'hffffffffffffc7e9ffffffffffff0639;
			293: dout = 128'hffffffffffffc661ffffffffffff0692;
			294: dout = 128'hffffffffffffc4daffffffffffff06ee;
			295: dout = 128'hffffffffffffc353ffffffffffff074c;
			296: dout = 128'hffffffffffffc1cdffffffffffff07ad;
			297: dout = 128'hffffffffffffc047ffffffffffff080f;
			298: dout = 128'hffffffffffffbec2ffffffffffff0875;
			299: dout = 128'hffffffffffffbd3dffffffffffff08dc;
			300: dout = 128'hffffffffffffbbb9ffffffffffff0946;
			301: dout = 128'hffffffffffffba36ffffffffffff09b3;
			302: dout = 128'hffffffffffffb8b3ffffffffffff0a22;
			303: dout = 128'hffffffffffffb732ffffffffffff0a93;
			304: dout = 128'hffffffffffffb5b0ffffffffffff0b06;
			305: dout = 128'hffffffffffffb430ffffffffffff0b7c;
			306: dout = 128'hffffffffffffb2b0ffffffffffff0bf5;
			307: dout = 128'hffffffffffffb131ffffffffffff0c6f;
			308: dout = 128'hffffffffffffafb3ffffffffffff0cec;
			309: dout = 128'hffffffffffffae36ffffffffffff0d6c;
			310: dout = 128'hffffffffffffacb9ffffffffffff0ded;
			311: dout = 128'hffffffffffffab3dffffffffffff0e71;
			312: dout = 128'hffffffffffffa9c2ffffffffffff0ef7;
			313: dout = 128'hffffffffffffa848ffffffffffff0f80;
			314: dout = 128'hffffffffffffa6cfffffffffffff100b;
			315: dout = 128'hffffffffffffa556ffffffffffff1098;
			316: dout = 128'hffffffffffffa3deffffffffffff1128;
			317: dout = 128'hffffffffffffa268ffffffffffff11ba;
			318: dout = 128'hffffffffffffa0f2ffffffffffff124e;
			319: dout = 128'hffffffffffff9f7dffffffffffff12e4;
			320: dout = 128'hffffffffffff9e09ffffffffffff137d;
			321: dout = 128'hffffffffffff9c96ffffffffffff1418;
			322: dout = 128'hffffffffffff9b24ffffffffffff14b5;
			323: dout = 128'hffffffffffff99b3ffffffffffff1555;
			324: dout = 128'hffffffffffff9843ffffffffffff15f7;
			325: dout = 128'hffffffffffff96d3ffffffffffff169b;
			326: dout = 128'hffffffffffff9565ffffffffffff1741;
			327: dout = 128'hffffffffffff93f8ffffffffffff17ea;
			328: dout = 128'hffffffffffff928cffffffffffff1895;
			329: dout = 128'hffffffffffff9121ffffffffffff1942;
			330: dout = 128'hffffffffffff8fb7ffffffffffff19f1;
			331: dout = 128'hffffffffffff8e4fffffffffffff1aa2;
			332: dout = 128'hffffffffffff8ce7ffffffffffff1b56;
			333: dout = 128'hffffffffffff8b80ffffffffffff1c0c;
			334: dout = 128'hffffffffffff8a1bffffffffffff1cc4;
			335: dout = 128'hffffffffffff88b6ffffffffffff1d7e;
			336: dout = 128'hffffffffffff8753ffffffffffff1e3b;
			337: dout = 128'hffffffffffff85f1ffffffffffff1efa;
			338: dout = 128'hffffffffffff8490ffffffffffff1fba;
			339: dout = 128'hffffffffffff8330ffffffffffff207d;
			340: dout = 128'hffffffffffff81d2ffffffffffff2142;
			341: dout = 128'hffffffffffff8075ffffffffffff220a;
			342: dout = 128'hffffffffffff7f19ffffffffffff22d3;
			343: dout = 128'hffffffffffff7dbeffffffffffff239f;
			344: dout = 128'hffffffffffff7c64ffffffffffff246c;
			345: dout = 128'hffffffffffff7b0cffffffffffff253c;
			346: dout = 128'hffffffffffff79b5ffffffffffff260e;
			347: dout = 128'hffffffffffff785fffffffffffff26e2;
			348: dout = 128'hffffffffffff770bffffffffffff27b8;
			349: dout = 128'hffffffffffff75b8ffffffffffff2890;
			350: dout = 128'hffffffffffff7466ffffffffffff296b;
			351: dout = 128'hffffffffffff7316ffffffffffff2a47;
			352: dout = 128'hffffffffffff71c7ffffffffffff2b25;
			353: dout = 128'hffffffffffff7079ffffffffffff2c06;
			354: dout = 128'hffffffffffff6f2dffffffffffff2ce8;
			355: dout = 128'hffffffffffff6de2ffffffffffff2dcd;
			356: dout = 128'hffffffffffff6c98ffffffffffff2eb3;
			357: dout = 128'hffffffffffff6b50ffffffffffff2f9c;
			358: dout = 128'hffffffffffff6a0affffffffffff3086;
			359: dout = 128'hffffffffffff68c4ffffffffffff3173;
			360: dout = 128'hffffffffffff6781ffffffffffff3261;
			361: dout = 128'hffffffffffff663effffffffffff3352;
			362: dout = 128'hffffffffffff64feffffffffffff3445;
			363: dout = 128'hffffffffffff63beffffffffffff3539;
			364: dout = 128'hffffffffffff6281ffffffffffff362f;
			365: dout = 128'hffffffffffff6144ffffffffffff3728;
			366: dout = 128'hffffffffffff600affffffffffff3822;
			367: dout = 128'hffffffffffff5ed1ffffffffffff391e;
			368: dout = 128'hffffffffffff5d99ffffffffffff3a1c;
			369: dout = 128'hffffffffffff5c63ffffffffffff3b1d;
			370: dout = 128'hffffffffffff5b2effffffffffff3c1e;
			371: dout = 128'hffffffffffff59fbffffffffffff3d22;
			372: dout = 128'hffffffffffff58caffffffffffff3e28;
			373: dout = 128'hffffffffffff579affffffffffff3f30;
			374: dout = 128'hffffffffffff566cffffffffffff4039;
			375: dout = 128'hffffffffffff5540ffffffffffff4144;
			376: dout = 128'hffffffffffff5415ffffffffffff4252;
			377: dout = 128'hffffffffffff52ecffffffffffff4360;
			378: dout = 128'hffffffffffff51c5ffffffffffff4471;
			379: dout = 128'hffffffffffff509fffffffffffff4584;
			380: dout = 128'hffffffffffff4f7bffffffffffff4698;
			381: dout = 128'hffffffffffff4e58ffffffffffff47ae;
			382: dout = 128'hffffffffffff4d38ffffffffffff48c6;
			383: dout = 128'hffffffffffff4c19ffffffffffff49e0;
			384: dout = 128'hffffffffffff4afcffffffffffff4afc;
			385: dout = 128'hffffffffffff49e0ffffffffffff4c19;
			386: dout = 128'hffffffffffff48c6ffffffffffff4d38;
			387: dout = 128'hffffffffffff47aeffffffffffff4e58;
			388: dout = 128'hffffffffffff4698ffffffffffff4f7b;
			389: dout = 128'hffffffffffff4584ffffffffffff509f;
			390: dout = 128'hffffffffffff4471ffffffffffff51c5;
			391: dout = 128'hffffffffffff4360ffffffffffff52ec;
			392: dout = 128'hffffffffffff4252ffffffffffff5415;
			393: dout = 128'hffffffffffff4144ffffffffffff5540;
			394: dout = 128'hffffffffffff4039ffffffffffff566c;
			395: dout = 128'hffffffffffff3f30ffffffffffff579a;
			396: dout = 128'hffffffffffff3e28ffffffffffff58ca;
			397: dout = 128'hffffffffffff3d22ffffffffffff59fb;
			398: dout = 128'hffffffffffff3c1effffffffffff5b2e;
			399: dout = 128'hffffffffffff3b1dffffffffffff5c63;
			400: dout = 128'hffffffffffff3a1cffffffffffff5d99;
			401: dout = 128'hffffffffffff391effffffffffff5ed1;
			402: dout = 128'hffffffffffff3822ffffffffffff600a;
			403: dout = 128'hffffffffffff3728ffffffffffff6144;
			404: dout = 128'hffffffffffff362fffffffffffff6281;
			405: dout = 128'hffffffffffff3539ffffffffffff63be;
			406: dout = 128'hffffffffffff3445ffffffffffff64fe;
			407: dout = 128'hffffffffffff3352ffffffffffff663e;
			408: dout = 128'hffffffffffff3261ffffffffffff6781;
			409: dout = 128'hffffffffffff3173ffffffffffff68c4;
			410: dout = 128'hffffffffffff3086ffffffffffff6a0a;
			411: dout = 128'hffffffffffff2f9cffffffffffff6b50;
			412: dout = 128'hffffffffffff2eb3ffffffffffff6c98;
			413: dout = 128'hffffffffffff2dcdffffffffffff6de2;
			414: dout = 128'hffffffffffff2ce8ffffffffffff6f2d;
			415: dout = 128'hffffffffffff2c06ffffffffffff7079;
			416: dout = 128'hffffffffffff2b25ffffffffffff71c7;
			417: dout = 128'hffffffffffff2a47ffffffffffff7316;
			418: dout = 128'hffffffffffff296bffffffffffff7466;
			419: dout = 128'hffffffffffff2890ffffffffffff75b8;
			420: dout = 128'hffffffffffff27b8ffffffffffff770b;
			421: dout = 128'hffffffffffff26e2ffffffffffff785f;
			422: dout = 128'hffffffffffff260effffffffffff79b5;
			423: dout = 128'hffffffffffff253cffffffffffff7b0c;
			424: dout = 128'hffffffffffff246cffffffffffff7c64;
			425: dout = 128'hffffffffffff239fffffffffffff7dbe;
			426: dout = 128'hffffffffffff22d3ffffffffffff7f19;
			427: dout = 128'hffffffffffff220affffffffffff8075;
			428: dout = 128'hffffffffffff2142ffffffffffff81d2;
			429: dout = 128'hffffffffffff207dffffffffffff8330;
			430: dout = 128'hffffffffffff1fbaffffffffffff8490;
			431: dout = 128'hffffffffffff1efaffffffffffff85f1;
			432: dout = 128'hffffffffffff1e3bffffffffffff8753;
			433: dout = 128'hffffffffffff1d7effffffffffff88b6;
			434: dout = 128'hffffffffffff1cc4ffffffffffff8a1b;
			435: dout = 128'hffffffffffff1c0cffffffffffff8b80;
			436: dout = 128'hffffffffffff1b56ffffffffffff8ce7;
			437: dout = 128'hffffffffffff1aa2ffffffffffff8e4f;
			438: dout = 128'hffffffffffff19f1ffffffffffff8fb7;
			439: dout = 128'hffffffffffff1942ffffffffffff9121;
			440: dout = 128'hffffffffffff1895ffffffffffff928c;
			441: dout = 128'hffffffffffff17eaffffffffffff93f8;
			442: dout = 128'hffffffffffff1741ffffffffffff9565;
			443: dout = 128'hffffffffffff169bffffffffffff96d3;
			444: dout = 128'hffffffffffff15f7ffffffffffff9843;
			445: dout = 128'hffffffffffff1555ffffffffffff99b3;
			446: dout = 128'hffffffffffff14b5ffffffffffff9b24;
			447: dout = 128'hffffffffffff1418ffffffffffff9c96;
			448: dout = 128'hffffffffffff137dffffffffffff9e09;
			449: dout = 128'hffffffffffff12e4ffffffffffff9f7d;
			450: dout = 128'hffffffffffff124effffffffffffa0f2;
			451: dout = 128'hffffffffffff11baffffffffffffa268;
			452: dout = 128'hffffffffffff1128ffffffffffffa3de;
			453: dout = 128'hffffffffffff1098ffffffffffffa556;
			454: dout = 128'hffffffffffff100bffffffffffffa6cf;
			455: dout = 128'hffffffffffff0f80ffffffffffffa848;
			456: dout = 128'hffffffffffff0ef7ffffffffffffa9c2;
			457: dout = 128'hffffffffffff0e71ffffffffffffab3d;
			458: dout = 128'hffffffffffff0dedffffffffffffacb9;
			459: dout = 128'hffffffffffff0d6cffffffffffffae36;
			460: dout = 128'hffffffffffff0cecffffffffffffafb3;
			461: dout = 128'hffffffffffff0c6fffffffffffffb131;
			462: dout = 128'hffffffffffff0bf5ffffffffffffb2b0;
			463: dout = 128'hffffffffffff0b7cffffffffffffb430;
			464: dout = 128'hffffffffffff0b06ffffffffffffb5b0;
			465: dout = 128'hffffffffffff0a93ffffffffffffb732;
			466: dout = 128'hffffffffffff0a22ffffffffffffb8b3;
			467: dout = 128'hffffffffffff09b3ffffffffffffba36;
			468: dout = 128'hffffffffffff0946ffffffffffffbbb9;
			469: dout = 128'hffffffffffff08dcffffffffffffbd3d;
			470: dout = 128'hffffffffffff0875ffffffffffffbec2;
			471: dout = 128'hffffffffffff080fffffffffffffc047;
			472: dout = 128'hffffffffffff07adffffffffffffc1cd;
			473: dout = 128'hffffffffffff074cffffffffffffc353;
			474: dout = 128'hffffffffffff06eeffffffffffffc4da;
			475: dout = 128'hffffffffffff0692ffffffffffffc661;
			476: dout = 128'hffffffffffff0639ffffffffffffc7e9;
			477: dout = 128'hffffffffffff05e2ffffffffffffc972;
			478: dout = 128'hffffffffffff058dffffffffffffcafb;
			479: dout = 128'hffffffffffff053bffffffffffffcc85;
			480: dout = 128'hffffffffffff04ecffffffffffffce0f;
			481: dout = 128'hffffffffffff049fffffffffffffcf9a;
			482: dout = 128'hffffffffffff0454ffffffffffffd125;
			483: dout = 128'hffffffffffff040bffffffffffffd2b0;
			484: dout = 128'hffffffffffff03c5ffffffffffffd43c;
			485: dout = 128'hffffffffffff0382ffffffffffffd5c9;
			486: dout = 128'hffffffffffff0341ffffffffffffd756;
			487: dout = 128'hffffffffffff0302ffffffffffffd8e3;
			488: dout = 128'hffffffffffff02c6ffffffffffffda70;
			489: dout = 128'hffffffffffff028cffffffffffffdbfe;
			490: dout = 128'hffffffffffff0255ffffffffffffdd8d;
			491: dout = 128'hffffffffffff0220ffffffffffffdf1b;
			492: dout = 128'hffffffffffff01edffffffffffffe0aa;
			493: dout = 128'hffffffffffff01bdffffffffffffe239;
			494: dout = 128'hffffffffffff0190ffffffffffffe3c9;
			495: dout = 128'hffffffffffff0165ffffffffffffe559;
			496: dout = 128'hffffffffffff013cffffffffffffe6e9;
			497: dout = 128'hffffffffffff0116ffffffffffffe879;
			498: dout = 128'hffffffffffff00f2ffffffffffffea0a;
			499: dout = 128'hffffffffffff00d1ffffffffffffeb9a;
			500: dout = 128'hffffffffffff00b2ffffffffffffed2b;
			501: dout = 128'hffffffffffff0096ffffffffffffeebc;
			502: dout = 128'hffffffffffff007cfffffffffffff04e;
			503: dout = 128'hffffffffffff0064fffffffffffff1df;
			504: dout = 128'hffffffffffff004ffffffffffffff371;
			505: dout = 128'hffffffffffff003dfffffffffffff502;
			506: dout = 128'hffffffffffff002dfffffffffffff694;
			507: dout = 128'hffffffffffff001ffffffffffffff826;
			508: dout = 128'hffffffffffff0014fffffffffffff9b8;
			509: dout = 128'hffffffffffff000cfffffffffffffb4a;
			510: dout = 128'hffffffffffff0005fffffffffffffcdc;
			511: dout = 128'hffffffffffff0002fffffffffffffe6e;
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
