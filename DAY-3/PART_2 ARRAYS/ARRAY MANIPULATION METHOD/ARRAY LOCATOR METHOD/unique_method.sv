module find_unique;
  int data[$];
  
  initial begin
    data = {11,8,10,10,4,10,14,14,16,16};
   
    $display("find the unique value: %p",data.unique());
  end 
endmodule
