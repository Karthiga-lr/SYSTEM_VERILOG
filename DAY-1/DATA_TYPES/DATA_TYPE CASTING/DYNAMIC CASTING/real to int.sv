module dynamic_real_to_int;
  real real_d;
  int int_d;
  initial begin
    real_d = 7.805;
    $display("Before casting of real_d = %0f",real_d);
    $cast(int_d,real_d);
    $display("After casting of real_d into int_d = %0d",int_d);
  end
endmodule
