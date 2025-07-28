module and_gate_example;
  wire a, b, y;

  assign a = 1'b1;
  assign b = 1'b0;
  assign y = a & b;

  initial begin
    #10;
    $display("AND Gate: %b & %b = %b", a, b, y);
  end
endmodule
