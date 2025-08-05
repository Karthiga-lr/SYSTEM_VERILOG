module dynamic_real_to_time;
  real real_d;
  time time_d;
  initial begin
    real_d = 7.05;
    $display("Before casting of real_d = %0f",real_d);
    $cast(time_d,real_d);
    $display("After casting of real_d into time_d = %0t",time_d);
  end
endmodule
