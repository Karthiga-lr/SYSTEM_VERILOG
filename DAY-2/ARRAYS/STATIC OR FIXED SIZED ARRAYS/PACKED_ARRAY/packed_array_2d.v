module packed_array_2d;
  bit [2:0][1:0] multibit;
  
  initial begin
    multibit = {4'b1010, 4'b1110};
    
    $display("multibit[0] = %b",multibit[0]);
    $display("multibit[1] = %b",multibit[1]);
    
  end
endmodule
