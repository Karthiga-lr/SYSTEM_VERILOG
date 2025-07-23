module find_index;
  int data[int];
  int index;
  
  initial begin
    data[0] = 10;
    data[1] = 20;
    data[2] = 30;
    
    $display("Find the index: %p", data.find_index(y) with (y == 20));
  end
endmodule


//array.find_index(check) with (check =="yelahanka");
