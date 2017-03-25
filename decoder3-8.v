/* **BONUS DECODER**
Authors: Bryan Pesquera
Description: Decoder from 3 to 8, design simulated 
using Icarus Verilog 0.10.0 11/23/14 on edaplayground.com
Date: Feb. 15, 2017.
*/

module decoder3to8(din, en, dout);
  input din [2:0]; //3bit input
  input en; //enable
  output reg [7:0] dout; //8bit output
  
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
