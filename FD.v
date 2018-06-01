`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:23:24 12/10/2017 
// Design Name: 
// Module Name:    FD 
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
module FD(clock,clock_7s,clock_station);
		input wire [0:0] clock;
		reg [0:0]c1 = 0;
		reg [0:0]c2 = 0;
		reg [0:0]c3 = 0;
		reg [0:0]c4=0;
		reg [0:0]c5=0;
		reg [0:0]c6=0;
		reg [0:0]c7=0;
		reg [0:0]c8=0;
		reg [0:0]c9=0;
		reg [0:0]c10=0;
		reg [0:0]c11=0;
		reg [0:0]c12=0;
		reg [0:0]c13=0;
		reg [0:0]c14=0;
		reg [0:0]c15=0;
		output reg [0:0]clock_7s=0;
		reg [0:0]c17=0;
		reg [0:0]c18=0;
		reg [0:0]c19=0;
		reg [0:0]c20=0;
		reg [0:0]c21=0;
		reg [0:0]c22=0;
		reg [0:0]c23=0;
		reg [0:0]c25=0;
		output reg [0:0]clock_station = 0;
		always @(posedge clock)
		begin
		c1 <= ~c1;
		end
		always @(posedge c1)
		begin
		c2 <= ~c2;
		end
		always @(posedge c2)
		begin
		c3 <= ~c3;
		end
		always @(posedge c3)
		begin
		c4 <= ~c4;
		end
		always @(posedge c4)
		begin
		c5 <= ~c5;
		end
		always @(posedge c5)
		begin
		c6 <= ~c6;
		end
		always @(posedge c6)
		begin
		c7 <= ~c7;
		end
		always @(posedge c7)
		begin
		c8 <= ~c8;
		end
		always @(posedge c8)
		begin
		c9 <= ~c9;
		end
		always @(posedge c9)
		begin
		c10 <= ~c10;
		end
		always @(posedge c10)
		begin
		c11 <= ~c11;
		end
		always @(posedge c11)
		begin
		c12 <= ~c12;
		end
		always @(posedge c12)
		begin
		c13 <= ~c13;
		end
		always @(posedge c13)
		begin
		c14 <= ~c14;
		end
		always @(posedge c14)
		begin
		c15 <= ~c15;
		end
		always @(posedge c15)
		begin
		clock_7s <= ~clock_7s;
		end
		always @(posedge clock_7s)
		begin
		c17 <= ~c17;
		end
		always @(posedge c17)
		begin
		c18 <= ~c18;
		end
		always @(posedge c18)
		begin
		c19 <= ~c19;
		end
		always @(posedge c19)
		begin
		c20 <= ~c20;
		end
		always @(posedge c20)
		begin
		c21 <= ~c21;
		end
		always @(posedge c21)
		begin
		c22 <= ~c22;
		end
		always @(posedge c22)
		begin
		c23 <= ~c23;
		end
		always @(posedge c23)
		begin
		c25 <= ~c25;
		end
		always @(posedge c25)
		begin
		clock_station <= ~clock_station;
		end
		
endmodule
