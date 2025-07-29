module byte_example;
  byte a,b,result;
  initial begin
    a = 8'd10;
    b = 8'd50;
    result = a + b;
    $display("result is : %d", result);
  end
endmodule
