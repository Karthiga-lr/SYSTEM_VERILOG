module prod_of_num;
  int num[$];  
  
  initial begin
    num = {4,10,2};
    
    $display("Product of numbers: %p",num.product());
  end 
endmodule
