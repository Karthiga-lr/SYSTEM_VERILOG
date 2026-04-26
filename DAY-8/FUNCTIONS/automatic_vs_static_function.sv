module automatic_vs_static;
  int result1, result2;
    function automatic int factorial_calc(int val1);
      if(val1>=2)
        result1 = factorial_calc(val1-1)*val1;
      else begin
        result1 = 1;
      end
      return result1;
    endfunction
  function int factorial_static(int val1);
    if(val1>=2)
        result2 = factorial_static(val1-1)*val1;
      else begin
        result2 = 1;
      end
      return result2;
    endfunction
  
  initial begin
    result1 = factorial_calc(5);
    result2 = factorial_static(5);
    $display("Automatic function factorial result1: %0d",result1);
    $display("Static function factorial result1: %0d",result2);
    
  end
endmodule
