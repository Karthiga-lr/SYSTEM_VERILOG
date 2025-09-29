module rose;
  bit clk,a,b;
  
  always #5 clk = ~clk;
  
  initial begin
    a = 0; b = 0;
    #10 a = 0; b = 1;//15
    #10 a = 1; b = 1; 
    #10 a = 0; b = 0;//35
    #10 a = 0; b = 1;
    #10 a = 0; b = 0;//55
    #10 a = 1; b = 1;
    #10 a = 0; b = 1;//65
    #10 a = 1; b = 1;
    #10 a = 0; b = 0;//85
    #10 a = 1; b = 1;
    #10 a = 1; b = 1;//105
    #20 $finish;
  end
  
  property p;
    @(posedge clk) a|-> ##1 $rose(b); // if a is 1 then b has to be 1(true) it has to rose from previous posedge clk (i.e previous 0 to 1)
  endproperty
  
  assert property(p)
    $info("It is pass at %0t",$time);
  else
    $info("It is fail at %0t",$time);
    
    initial begin
      $dumpfile("test.vcd");
      $dumpvars;
    end
endmodule
