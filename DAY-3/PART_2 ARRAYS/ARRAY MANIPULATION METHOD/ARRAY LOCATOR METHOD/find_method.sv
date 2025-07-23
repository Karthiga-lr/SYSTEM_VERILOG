module find_method;
  int data [$:6];
  
  initial begin
    data = '{2,4,6,8,10,12};
    
    //array.find(check) with (check >="oldtown")
    
    $display("data: %p",data.find(y) with (y>=6));
    
  end
endmodule
