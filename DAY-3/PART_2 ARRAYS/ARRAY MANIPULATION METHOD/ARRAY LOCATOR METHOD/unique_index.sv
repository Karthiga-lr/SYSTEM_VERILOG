module find_unique_index;
  int data[$];  
  
  initial begin
    data = {11,8,10,10,4,10,14,14,16,16};
    
   
    $display("find the unique index: %p",data.unique_index(y) with (y<=14));
  end 
endmodule // output is error (need to detect)
