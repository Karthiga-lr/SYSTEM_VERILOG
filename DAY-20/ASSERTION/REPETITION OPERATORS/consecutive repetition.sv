module consecutive_rep;
  bit clk,a,b;
  
  always #5 clk = ~clk;
  
  initial begin
    clk = 0; a = 0; b = 0;
    #15 a = 0; b = 0;
    #10 a = 1; b = 1;
    #10 a = 0; b = 1;
    #10 a = 1; b = 1;
    #10 a = 0; b = 1;
    #10 a = 1; b = 0;
    #10 a = 0; b = 1;
    #10 a = 0; b = 1;
    #10 a = 0; b = 0;
    #10 a = 0; b = 1;
    #10 a = 0; b = 1;
    #20 $finish;
  end
  
  property p;
    @(posedge clk) a|-> ##1 b[*3]; // on the first clock edge if  a = 1 then from the next clock edge b = 1 must be repeated 3 times
  endproperty
  
  assert property(p)
    $display("pass at time %0t",$time);
    else
      $display("Fail at time %0t",$time);
    endmodule
