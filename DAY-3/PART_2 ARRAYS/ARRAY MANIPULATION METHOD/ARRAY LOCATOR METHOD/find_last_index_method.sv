module find_last_index_method;
  int data[$];
  int index;
  
  initial begin
    data = {11,8,10,12,14,16};
    $display("find the lastindex: %p", data.find_last_index(y
    ) with (y <= 12));
  end 
endmodule


//array.find_last(check) with (check < "oldtown");
