module static_real_to_int;
  real real_d;
  int int_d;
  initial begin
    real_d = 7.50;
    $display("Before casting of real_d = %0f",real_d);
    int_d = int'(real_d);
    $display("After casting of real_d into int_d = %0d",int_d);
  end
endmodule
