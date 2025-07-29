module int_example;
  shortint s;

  initial begin
    s = 12345.55;
    $display("shortint: %0d", s);
  end
endmodule
