module array_tb;
  function automatic void increment(ref int x);
    $display("Inside function before increment: x = %0d",x);
    x=x+1;
    $display("Inside function after increment: x = %0d",x);
  endfunction
  
  initial begin
    int a = 10;
    $display("Before calling function: a = %0d",a);
    increment(a);
    $display("After calling function: a = %0d",a);
  end
endmodule
