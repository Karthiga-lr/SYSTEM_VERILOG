module bit_example;
  bit a,b, result;
  initial begin
    a = 0;
    b = 1;
    result = a^b;
    $display(" result is %b", result);
  end
endmodule
