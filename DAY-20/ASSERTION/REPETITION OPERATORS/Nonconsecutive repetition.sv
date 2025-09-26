module non_conse_repetition;
  bit a,b,c,clk;
  
  always #5 clk = ~clk;
  
  initial begin
    clk = 0; a = 0; b = 0;c = 0;
    #15 a = 1; b = 0; c = 0;
    #10 a = 0; b = 0; c = 1;
    #10 a = 1; b = 1; c = 0;
    #10 a = 1; b = 0; c = 0;
    #10 a = 0; b = 1; c = 0;
    #10 a = 1; b = 0; c = 0;
    #10 a = 1; b = 1; c = 0;
    #10 a = 1; b = 0; c = 1;
    #20 $finish;
  end
  
  property p;
    @(posedge clk) a|-> b[=3] ##1 c; // relaxed repetition
  endproperty
  
  assert property (p)
    $display("pass at %0t",$time);
    else
      $display("Fail at %0t",$time);
    endmodule
