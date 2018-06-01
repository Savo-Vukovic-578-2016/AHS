`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:18:46 12/10/2017 
// Design Name: 
// Module Name:    AFCS 
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
module AFCS(fire,reload,clock,rockets,radar,armed);
		
		input wire [0:0] fire;
		input wire [0:0] reload;
		input wire [0:0] clock;
		input wire [0:0] radar;
		output reg [4:0] rockets = 24;
		input wire [0:0] armed;
		always @(posedge clock)
		begin
		if((radar == 1) & (armed == 1))
			if(rockets == 1)
				begin
				rockets <= rockets;
					if(reload == 1)
						rockets <= 24;
							end
			else
				begin
					if(reload == 1)
						rockets <= 24;
					else if(fire == 1)
						rockets <= rockets - 1;
				end
		end
endmodule
