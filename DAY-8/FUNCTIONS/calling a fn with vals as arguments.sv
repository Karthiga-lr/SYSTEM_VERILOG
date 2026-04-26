module test;
initial begin
  int result;
  result = sum(2,5);
  $display("Display the values");
  $display("The value of sum is %0d", result);
end
  function int sum(int var1, var2);
    $display("entered into the function");
    return var1+var2;
  endfunction
endmodule
