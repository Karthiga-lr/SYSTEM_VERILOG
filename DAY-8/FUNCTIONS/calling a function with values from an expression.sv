module func_with_exp;
  function int mul(int a,b);
  return a*b;
  endfunction
  initial begin
    $display("value = %0d",2+mul(5,6));  //expression 
  end
endmodule
