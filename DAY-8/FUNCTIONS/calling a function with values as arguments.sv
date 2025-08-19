module func_call_value;
  int result;
  
  initial begin
    $display("Calling the function");
    result = square(7);
    $display("Returned from function");
    $display("REsult = %0d",result);
  end
  
  function int square(int x);
    $display("Inside the function which is received: x = %0d",x);
    return x*x;
  endfunction
endmodule   
