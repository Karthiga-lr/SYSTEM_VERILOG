module conditional_if_code;
  bit[4:0] a;
  initial begin
    a = 31;
    $display("The value of a: %0b",a);
    if(a == 32)begin
      $display("It works here if the if-condition is true");
    $display("a is eqaul to 10");
  end
  $display("Out of block");
  end
endmodule
