`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:22:44 12/10/2017 
// Design Name: 
// Module Name:    displays 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
	module displays(clock_7s,a0,b0,c0,d0,e0,f0,g0,a1,b1,c1,d1,e1,f1,g1,a,b,c,d,e,f,g,dp,AN0,AN1,AN2,AN3,dp0,dp1);
		reg [0:0] counter = 0;
		output reg [0:0]a;	input wire [0:0]a0;	input wire [0:0]a1;
		output reg [0:0]b;	input wire [0:0]b0;	input wire [0:0]b1;
		output reg [0:0]c;	input wire [0:0]c0;	input wire [0:0]c1;
		output reg [0:0]d;	input wire [0:0]d0;	input wire [0:0]d1;
		output reg [0:0]e;	input wire [0:0]e0;	input wire [0:0]e1;
		output reg [0:0]f;	input wire [0:0]f0;	input wire [0:0]f1;
		output reg [0:0]g;	input wire [0:0]g0;	input wire [0:0]g1;
		output reg [0:0]dp;	input wire [0:0]dp0;	input wire [0:0]dp1;
		output reg [0:0]AN0;	input wire [0:0] clock_7s;	
		output reg [0:0]AN1;
		output reg [0:0]AN2 = 1;	
		output reg [0:0]AN3 = 1;
		
		always @(posedge clock_7s)
		begin
		counter <= ~counter;
		if(counter)
			begin
			a <= a0;
			b <= b0;
			c <= c0;
			d <= d0;
			e <= e0;
			f <= f0;
			g <= g0;
			dp <= dp0;
			AN0 <= 0;
			AN1 <= 1;
			end
		else
			begin
			a <= a1;
			b <= b1;
			c <= c1;
			d <= d1;
			e <= e1;
			f <= f1;
			g <= g1;
			dp <= dp1;
			AN0 <= 1;
			AN1 <= 0;
			end
		end
endmodule
