module decoder_testbench;
  wire [7:0]d;
  reg x, y, z;
  
  decoder dec(x, y, z, d);
  initial begin
    
    //same possible combinations for 3 to 8
    //described in decoder
    
    x = 0; y = 0; z = 0;
#10 x = 0; y = 0; z = 1;
#10 x = 0; y = 1; z = 0;
#10 x = 0; y = 1; z = 1;
#10 x = 1; y = 0; z = 0;
#10 x = 1; y = 0; z = 1;
#10 x = 1; y = 1; z = 0;
#10 x = 1; y = 1; z = 1;
    #10$finish;
  end 

endmodule
