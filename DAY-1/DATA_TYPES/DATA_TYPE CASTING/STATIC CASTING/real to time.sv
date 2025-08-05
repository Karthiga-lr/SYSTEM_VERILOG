module static_real_to_time;
  real real_d;
  int time_d;
  initial begin
    real_d = 7.05;
    $display("Before casting of real_d = %0f",real_d);
    time_d = time'(real_d);
    $display("After casting of real_d into int_d = %0d",time_d);
  end
endmodule
