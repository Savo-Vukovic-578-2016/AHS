`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:21:01 12/10/2017 
// Design Name: 
// Module Name:    rockets 
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
module rockets(ammunition_1,ammunition_2,ammunition_3,clock,rocketsH,rocketsL,radar_1,radar_2,radar_3);
	
	input wire [4:0] ammunition_1;
	input wire [4:0] ammunition_2;
	input wire [4:0] ammunition_3;
	input wire [0:0] clock;
	input wire [0:0] radar_1;
	input wire [0:0] radar_2;
	input wire [0:0] radar_3;
	output reg [4:0] rocketsH;
	output reg [4:0] rocketsL;
		    reg [4:0] temp;
	
	always @(posedge clock)
	begin
	if(radar_1 & ~radar_2 & ~radar_3)
		temp <= ammunition_1;
	else if(~radar_1 & radar_2 & ~radar_3)
		temp <= ammunition_2;
	else if(~radar_1 & ~radar_2 & radar_3)
		temp <= ammunition_3;
	
	if(temp >= 20)
		begin
		rocketsH <= 2;
		rocketsL <= temp - 20;
		end
	else if(temp >= 10)
		begin
		rocketsH <= 1;
		rocketsL <= temp - 10;
		end
	else
		begin
		rocketsH <= 0;
		rocketsL <=  temp;
		end
	
	end


endmodule
