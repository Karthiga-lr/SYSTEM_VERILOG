module func_call_value;
  int result;
  int a = 5;
  initial begin
    $display("Calling the function with variable a=%0d",a);
    result = square(a);
    $display("Returned from function");
    $display("REsult = %0d",result);
    $display("Value of a after the function call a =%0d",a);
  end
  
  function int square(int a);
    $display("Inside the function which is received: a = %0d",a);
    return a*a;
  endfunction
endmodule  
