module countones;
  bit clk,a;
  logic [3:0] b;
  
  always #5 clk = ~clk;
  
  initial begin
    a = 0; b = 4'b0000;
    #10 a = 0; b = 4'b0011;
    #10 a = 1; b = 4'b01x0;
    #10 a = 0; b = 4'b0100;
    #10 a = 1; b = 4'bzx10;
    #10 a = 0; b = 4'b1xx0;
    #10 a = 1; b = 4'b0111;
    #10 a = 1; b = 4'b1000;
    #10 a = 0; b = 4'b0100;
    #10 a = 1; b = 4'b0zz1;
    #10 
    $finish;
  end 
  
  property p;
    @(posedge clk) a |-> ($countones(b) ==1);  // only one bit has to be high as per this condition
  endproperty
  
  assert property(p)
    $info("Pass");
    else
      $info("Fail");
    
    initial begin
      $dumpfile("test.vcd");
      $dumpvars();
    end
    endmodule
    
