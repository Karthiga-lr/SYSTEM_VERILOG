module sum_of_num;
  int num[$];  
  
  initial begin
    num = {4,10,2,14,6};
    
    $display("find the sum of numbers: %p",num.sum());
  end 
endmodule
