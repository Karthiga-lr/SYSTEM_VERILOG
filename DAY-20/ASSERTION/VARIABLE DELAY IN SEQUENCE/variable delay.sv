module variable_delay;
  bit clk,a,b;
  int parameter_delay = 2;
  
  always #5 clk = ~clk;
  
  initial begin
    clk = 0;
    a = 0; b = 0;
    #10 a = 1; b = 1;
    #10 a = 0; b = 1;
    #10 a = 0; b = 1;
    #10 a = 1; b = 1;
    #10 a = 0; b = 0;
    #20 $finish;
  end
  sequence delay_sequence(int variable_delay);
    int delay;
    (1, delay = variable_delay) ##0
        first_match((1, delay = delay - 1) [*0:$] ##0 delay <= 0);
  endsequence
  property p_variable_delay;
    @(posedge clk) a|->delay_sequence(parameter_delay)|->b;
  endproperty
  
  assert property(p_variable_delay)
    $display("pass at time %0t",$time);
    else
    $display("Fail at time %0t",$time); 
    endmodule
