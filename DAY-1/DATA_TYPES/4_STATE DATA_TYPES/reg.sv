module reg_datatype; //default value of reg is x
  reg a;
  initial begin
    a = 1'b1;
    $display("a = %b", a);
  end
endmodule
