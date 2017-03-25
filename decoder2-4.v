/*
Authors: Bryan Pesquera
Description: Decoder from 2 to 4, design simulated 
using Icarus Verilog 0.10.0 11/23/14 on edaplayground.com
Date: Feb. 15, 2017.
*/

module decoder2to4(din, en, dout);
  input [1:0] din; //2bit input
  input en; //enable
  output reg [3:0] dout;  //4bit output

  //a=din[0], b=din[1]
  //output assignments
  assign dout[0] = (~din[0]) & (~din[1]) & en;  //~a&~b&en
  assign dout[1] = (~din[0]) & (din[1]) & en; //~a&b&en
  assign dout[2] = (din[0]) & (~din[1]) & en; //a&~b&en
  assign dout[3] = (din[0]) & (din[1]) & en;  //a&b&en

endmodule
