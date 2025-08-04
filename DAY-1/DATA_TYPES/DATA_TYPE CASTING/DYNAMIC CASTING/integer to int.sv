module dynamic_integer_to_int;
  integer integer_d;
  int int_d;
  initial begin
    integer_d = 8'b1011_11xz;
    $display("value of integer before casting = %0b",integer_d);
    integer_d = ($cast(int_d,integer_d));
    $display("Value of integer after casting = %0b",int_d);
  end
endmodule
