module OR_of_num;
  int num[$];  
  
  initial begin
    num = {15,5,8,10}; //Bitwise OR 1111,0101,1000,1010
    
    $display("AND of numbers: 0X%0h",num.or());
  end 
endmodule
