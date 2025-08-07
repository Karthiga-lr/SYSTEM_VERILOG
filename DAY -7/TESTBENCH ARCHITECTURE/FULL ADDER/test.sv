`include "environment.sv"

program test(inti intff);
  environment env;

  initial begin
    env = new(intff);
    env.test_run();        
  end
endprogram
