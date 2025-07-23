module find_last_method;
  int data[$];
  int index;
  
  initial begin
    data = {11,8,10,12,14,16};
    $display("find the last index value: %p", data.find_last(y) with (y < 13));
  end 
endmodule
