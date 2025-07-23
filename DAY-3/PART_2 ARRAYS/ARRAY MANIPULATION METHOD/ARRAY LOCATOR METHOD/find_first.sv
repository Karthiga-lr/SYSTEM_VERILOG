module find_first_method;
  int data[$];
  int index;
  
  initial begin
    data = {11,8,10,12,14,16};
    $display("find the first index: %p", data.find_first(index) with (index <= 13));
  end 
endmodule
             
//syntax array.find_first(check) with (check < "yelahanka" & check >= "newton" );
