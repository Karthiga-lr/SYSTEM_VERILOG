module XOR_of_num;
  int num[$];  
  
  initial begin
    num = {15,5,8,10}; //Bitwise XOR 1111,0101,1000,1010
    
    $display("XOR of numbers: 0X%0h",num.xor());
  end 
endmodule
