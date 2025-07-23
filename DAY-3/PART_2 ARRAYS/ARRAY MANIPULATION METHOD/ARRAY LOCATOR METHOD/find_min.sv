module find_min;
  int data[$];
  
  initial begin
    data = {11,8,10,4,14,16};
   
    $display("find the last max value: %p",data.min());
  end 
endmodule
