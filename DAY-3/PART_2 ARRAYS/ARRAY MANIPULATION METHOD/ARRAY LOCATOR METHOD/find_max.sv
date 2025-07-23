module find_max;
  int data[$];
  
  initial begin
    data = {11,8,10,12,14,16};
   
    $display("find the last max value: %p",data.max());
  end 
endmodule
