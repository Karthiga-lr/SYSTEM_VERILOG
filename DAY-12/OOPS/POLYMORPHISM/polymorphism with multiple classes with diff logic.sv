class calculator;
  virtual function int add(int a, int b);
    return a + b;
    endfunction 
  
  virtual function int multiply(int a, int b);
    return a * b;
    endfunction 
endclass
class scientificcalc extends calculator;
  function int add(int a, int b);
    $display("Scientificcalc add: %0d+%0d", a,b);
    return a+b+100;
    endfunction 
  function int multiply (int a, int b);
    $display("scientificalc multiply: %0d*%0d",a,b);
    return a*b*10;
  endfunction
endclass
class FinancialCalc extends calculator;
  function int add(int a, int b);
    $display("FinancialCalc add: %0d + %0d", a, b);
    return (a + b) *2;
  endfunction

  function int multiply(int a, int b);
    $display("FinancialCalc multiply: %0d * %0d", a, b);
    return (a * b) * 2; 
  endfunction
endclass
module tb;
  initial begin
    calculator c;     
    scientificcalc sc;
    FinancialCalc fc;
    int result;

    // ScientificCalc
    sc = new();
    c = sc;  
    result = c.add(5, 5);
    $display("Result: %0d", result);
    result = c.multiply(5, 5);
    $display("Result: %0d", result);
    // FinancialCalc 
    fc = new();
    c = fc;
    result = c.add(5, 3);
    $display("Result: %0d", result);
    result = c.multiply(5, 3);
    $display("Result = %0d", result);
  end
  endmodule 
