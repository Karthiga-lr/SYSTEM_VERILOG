module static_casting_int_to_long_int;
  int int_d;
  longint longint_d;
  initial begin
    int_d = 8'b1101_z1x0;
    $display("default size of int_d = %0b",$size(int_d));
    $display("Before casting of int_d = %0b",int_d);
    int_d = longint'(int_d);
    $display("After casting int_d to longint_d = %0b",int_d);
  end
endmodule
