module dynamic_int_to_longint;
  longint longint_d;
  int int_d;
  initial begin
    int_d = 15678;
    $display("value of longint before casting = %0b",longint_d);
    $cast(longint_d,int_d);
    $display("Value of longint after casting = %h",longint_d);
  end
endmodule
