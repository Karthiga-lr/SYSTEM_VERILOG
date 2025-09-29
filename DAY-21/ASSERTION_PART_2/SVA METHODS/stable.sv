module stable;
  bit clk,a,b;
  
  always #5 clk = ~clk;
  
  initial begin
    a = 0; b = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 1; //25 pass
    #10 a = 0; b = 0;
    #10 a = 1; b = 0; //45 pass
    #10 a = 0; b = 1;
    #10 a = 1; b = 1; //65 pass
    #10 a = 0; b = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 0; //95 fail
    #10 a = 1; b = 1;
    #10
    $finish;
  end
  
  property p;
    @(posedge clk)a|->$stable(b); // previous posedge clk b should be equal to next posedge clk b
  endproperty
  
  assert property(p)
    $info("pass at time %0t",$time);
    else
      $info("Fail at time %0t", $time);
    
    initial begin
      $dumpfile("test.vcd");
      $dumpvars();
    end
    endmodule
    
