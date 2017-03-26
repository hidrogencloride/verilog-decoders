/*
Authors: Bryan Pesquera
Description: Test bench for decoder-combi.v, design simulated 
using Icarus Verilog 0.10.0 11/23/14 on edaplayground.com
Date: Feb. 15, 2017.
*/

module decoder_testbench;
  reg [2:0] din;
  wire [7:0] w;
 
  
  
  decoder3to8 d38tb(din, w, en);
  initial begin
    
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
  //all possible combinations for 3 to 8
    #10 din[0] = 0; din[1] = 0; din[2] = 0;
    #10 din[0] = 0; din[1] = 0; din[2] = 1;
    #10 din[0] = 0; din[1] = 1; din[2] = 0;
    #10 din[0] = 0; din[1] = 1; din[2] = 1;
    #10 din[0] = 1; din[1] = 0; din[2] = 0;
    #10 din[0] = 1; din[1] = 0; din[2] = 1;
    #10 din[0] = 1; din[1] = 1; din[2] = 0;
    #10 din[0] = 1; din[1] = 1; din[2] = 1;
    
  #10$finish;
    
  end 

endmodule
