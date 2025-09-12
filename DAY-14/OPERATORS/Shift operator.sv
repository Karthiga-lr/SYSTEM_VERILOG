module shift_operator;
  logic [3:0] a;
  
  initial begin
    a = 3'b101;
    $display("The value of a: %0d",a);
    $display("Logical left shift of a: %0b", a<<1);
    $display("Logical right shift of a: %0b", a>>1);
    $display("Logical arithmetic left shift of a: %0b", a<<<1);
    $display("Logical arithmetic right shift of a: %0b", a>>>1);
  end
endmodule
