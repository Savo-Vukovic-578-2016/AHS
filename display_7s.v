`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:21:36 12/10/2017 
// Design Name: 
// Module Name:    display_7s 
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
module display_7s(clock,a,b,c,d,e,f,g,dp,in);
		input wire [0:0] clock;
		input wire [4:0] in;
		output reg [0:0] a = 0;
		output reg [0:0] b = 0;
		output reg [0:0] c = 0;
		output reg [0:0] d = 0;
		output reg [0:0] e = 0;
		output reg [0:0] f = 0;
		output reg [0:0] g = 0;
		output reg [0:0] dp = 0;
			
		always @(posedge clock)
		begin
		if(in == 0)
		begin
			a <= 0;
			b <= 0;
			c <= 0;
			d <= 0;
			e <= 0;
			f <= 0;
			g <= 1;
		  dp <= 1;
		end
		if(in == 1)
		begin
			a <= 1;
			b <= 0;
			c <= 0;
			d <= 1;
			e <= 1;
			f <= 1;
			g <= 1;
			dp <= 1;
		end
		if(in == 2)
		begin
		a <= 0;
		b <= 0;
		c <= 1;
		d <= 0;
		e <= 0;
		f <= 1;
		g <= 0;
		dp <= 1;
		end
		if(in == 3)
		begin
		a <= 0;
		b <= 0;
		c <= 0;
		d <= 0;
		e <= 1;
		f <= 1;
		g <= 0;
		dp <= 1;
		end
		if(in == 4)
		begin
		a <= 1;
		b <= 0;
		c <= 0;
		d <= 1;
		e <= 1;
		f <= 0;
		g <= 0;
		dp <= 1;
		end
		if(in == 5)
		begin
		a <= 0;
		b <= 1;
		c <= 0;
		d <= 0;
		e <= 1;
		f <= 0;
		g <= 0;
		dp <= 1;
		end
		if(in == 6)
		begin
		a <= 1;
		b <= 1;
		c <= 0;
		d <= 0;
		e <= 0;
		f <= 0;
		g <= 0;
		dp <= 1;
		end
		if(in == 7)
		begin
		a <= 0;
		b <= 0;
		c <= 0;
		d <= 1;
		e <= 1;
		f <= 1;
		g <= 1;
		dp <= 1;
		end
		if(in == 8)
		begin
		a <= 0;
		b <= 0;
		c <= 0;
		d <= 0;
		e <= 0;
		f <= 0;
		g <= 0;
		dp <= 1;
		end
		if(in == 9)
		begin
		a <= 0;
		b <= 0;
		c <= 0;
		d <= 1;
		e <= 1;
		f <= 0;
		g <= 0;
		dp <= 1;
		end
		end
endmodule

