module int_example;
  longint l;
  initial begin
    l = 64'd9876543210;

    $display("longint : %0d", l);
  end
endmodule
