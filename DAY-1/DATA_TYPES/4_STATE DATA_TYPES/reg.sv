module reg_datatype;
  reg a;
  initial begin
    a = 1'b1;
    $display("a = %b", a);
  end
endmodule
