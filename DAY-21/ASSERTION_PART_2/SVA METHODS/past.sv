module past;
  bit clk,a,b;
  
  always #5 clk = ~clk;
  
  initial begin
    a = 0; b = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 1;
    #10 a = 0; b = 1;
    #10 a = 1; b = 1;
    #10 a = 1; b = 1;
    #10 a = 0; b = 1;
    #10 a = 1; b = 0;
    #10 a = 1; b = 0;
    #10 
    $finish;
  end
  
  property p;
    @(posedge clk)a|->($past(b,2) == 1);
  endproperty
  
  assert property(p)
    $info("pass");
    else
      $info("fail");
    
    initial begin
      $dumpfile("test.vcd");
      $dumpvars();
    end
    endmodule
