module func_with_posi;
  int result;
  
  initial begin
    result = mult(.var1(10), .var2(5));
    $display("result = %0d",result);
  end
  
  function int mult(int var1, var2);
    $display("Inside function var1 = %0d and var2 = %0d",var1,var2);
    return var1*var2;
  endfunction 
endmodule
