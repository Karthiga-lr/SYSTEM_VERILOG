module static_delay;
  bit clk,a,b;
  
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
  
  property p;
    @(posedge clk) a|-> ##3 b;
  endproperty
  
  assert property(p)
    $display("pass at time %0t",$time);
    else
    $display("Fail at time %0t",$time); 
    endmodule
