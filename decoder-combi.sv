/*
Authors: Bryan Pesquera
Description: Connection of two 2to4 decoders to create a 3to8, design simulated 
using Icarus Verilog 0.10.0 11/23/14 on edaplayground.com
Date: Feb. 15, 2017.
*/

//----------------------------------------------------------------------------------
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
//----------------------------------------------------------------------------------

//----------------------------------------------------------------------------------
module decoder3to8(din, en, dout);
  input [2:0] din; //3bit input
  input en; //enable
  output reg [7:0] dout; //8bit output
  wire [7:0] w;
  
//connection of two 2to4 modules: --------------------------------------------------
 decoder2to4 mod1(.din(din), .dout(w), .en(en));
 decoder2to4 mod2(.din(din), .dout(w), .en(en));
//----------------------------------------------------------------------------------
  
  //all combinations for 3 inputs to 8 outputs
  assign dout[0] = (~din[0] & ~din[1] & ~en);
  assign dout[1] = (~din[0] & ~din[1] & en);
  assign dout[2] = (~din[0] & din[1] & ~en);
  assign dout[3] = (~din[0] & din[1] & en);
  assign dout[4] = (din[0] & ~din[1] & ~en);
  assign dout[5] = (din[0] & ~din[1] & en);
  assign dout[6] = (din[0] & din[1] & ~en);
  assign dout[7] = (din[0] & din[1] & en);
  
endmodule
//----------------------------------------------------------------------------------
