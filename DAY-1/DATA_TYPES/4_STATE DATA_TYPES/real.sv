module real_math;
  real angle, result;

  initial begin
    angle = 3.14159 / 2; 
    result = $sin(angle);

    $display("Sin(90 degrees) = %0f", result);
  end
endmodule
