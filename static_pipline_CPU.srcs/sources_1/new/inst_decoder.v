`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/09 14:52:10
// Design Name: 
// Module Name: inst_decoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module inst_decoder(instruction, op, rs, rt, rd, shamt, func, imm16, index);
	input [31:0]instruction;
	output [5:0]op;
	output [4:0]rs;
	output [4:0]rt;
	output [4:0]rd;
	output [4:0]shamt;
	output [5:0]func;
	output [15:0]imm16;
	output [25:0]index;

	assign op = instruction[31:26];
	assign rs = instruction[25:21];
	assign rt = instruction[20:16];
	assign rd = instruction[15:11];
	assign shamt = instruction[10:6];
	assign func = instruction[5:0];
	assign imm16 = instruction[15:0];
	assign index = instruction[25:0];
endmodule
