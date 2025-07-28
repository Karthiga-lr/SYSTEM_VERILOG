module integer_examples;
  integer a,b, sum, prod;
  
  initial begin
    a = 10;
    b= 5;
    sum = a + b;
    prod = a*b;
    
    $display("sum of a and b: %0d", sum);
    $display("Product of a and b: %0d", prod);
    
  end
endmodule
