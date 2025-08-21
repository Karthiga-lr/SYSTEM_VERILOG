module factorial_numbers;
  int result;
  
  function int factorial_st(int fact);
    if(fact >=2)
      result = factorial_st(fact-1)*fact;
    else
      result =1;
    return result;
  endfunction
  
  function automatic int factorial_auto(int fact);
    if(fact >=2)
      result = factorial_auto(fact-1)*fact;
    else
      result = 1;
    return result;
  endfunction
  
  initial begin
    int num=5;
    $display("Factorial of a function =%0d",factorial_st(num));
    $display("Factorial of a automatic function =%0d",factorial_auto(num));
  end
endmodule
