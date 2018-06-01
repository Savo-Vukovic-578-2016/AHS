`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:19:47 12/10/2017 
// Design Name: 
// Module Name:    CCS 
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
module CCS(input clock,SA,fire,reload,radar_1,radar_2,radar_3, output a,b,c,d,e,fp,g,dp,AN0,AN1,AN2,AN3);
	
	wire [4:0] ammunition_1; 		wire [0:0] a0; wire [0:0] a1; wire [0:0] clock_station;
	wire [4:0] ammunition_2;      wire [0:0] b0; wire [0:0]b1;	wire [0:0] clock_7s;
	wire [4:0] ammunition_3;      wire [0:0] c0; wire [0:0]c1;	
	wire [4:0] rocketsH;		 		wire [0:0] d0; wire [0:0]d1;
	wire [4:0] rocketsL;		 		wire [0:0] e0; wire [0:0]e1;	
											wire [0:0] f0; wire [0:0]f1;
											wire [0:0] g0; wire [0:0]g1;
											wire [0:0] dp0; wire [0:0]dp1; 
	
	
	rockets rockets1(.ammunition_1(ammunition_1),.ammunition_2(ammunition_2),.ammunition_3(ammunition_3),.clock(clock),.rocketsH(rocketsH),.rocketsL(rocketsL),.radar_1(radar_1),.radar_2(radar_2),.radar_3(radar_3));	
	
	AFCS station_1(.fire(fire),.reload(reload),.clock(clock_station),.rockets(ammunition_1),.radar(radar_1 & ~radar_2 & ~radar_3),.armed(SA));
	AFCS station_2(.fire(fire),.reload(reload),.clock(clock_station),.rockets(ammunition_2),.radar(radar_2 & ~radar_1 & ~radar_3),.armed(SA));
	AFCS station_3(.fire(fire),.reload(reload),.clock(clock_station),.rockets(ammunition_3),.radar(radar_3 & ~radar_1 & ~radar_2),.armed(SA));
	
	display_7s display_0(.clock(clock),.a(a0),.b(b0),.c(c0),.d(d0),.e(e0),.f(f0),.g(g0),.dp(dp0),.in(rocketsL));
	display_7s display_1(.clock(clock),.a(a1),.b(b1),.c(c1),.d(d1),.e(e1),.f(f1),.g(g1),.dp(dp1),.in(rocketsH));

	displays display(.clock_7s(clock_7s),.a0(a0),.b0(b0),.c0(c0),.d0(d0),.e0(e0),.f0(f0),.g0(g0),.a1(a1),.b1(b1),.c1(c1),.d1(d1),.e1(e1),.f1(f1),.g1(g1),.a(a),.b(b),.c(c),.d(d),.e(e),.f(fp),.g(g),.dp(dp),.AN0(AN0),.AN1(AN1),.AN2(AN2),.AN3(AN3),.dp0(dp0),.dp1(dp1));
	FD F_divider(.clock(clock),.clock_7s(clock_7s),.clock_station(clock_station));
	

endmodule