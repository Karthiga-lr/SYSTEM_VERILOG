module default_val;
  
  function int sum(int a = 5, b= 15); // default values
    return a + b;
  endfunction
  int result;
  initial begin
    $display("Calling a function with default values");
    result = sum();
    $display("Sum = %0d",result);
    result = sum(10);
    $display("sum = %0d",result); //overides a
    result = sum(20,40);
    $display("sum = %0d",result); //overides both a and b
  end
endmodule
