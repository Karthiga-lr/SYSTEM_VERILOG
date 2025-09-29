module onehot_0;
  bit clk,a;
  logic [3:0] b;
  
  always #5 clk = ~clk;
  
  initial begin
    a = 0; b = 4'b0000;
    #10 a = 0; b = 4'b0011;
    #10 a = 1; b = 4'b0100;
    #10 a = 0; b = 4'b0100;
    #10 a = 1; b = 4'b0000;
    #10 a = 0; b = 4'b1100;
    #10 a = 1; b = 4'b0111;
    #10 a = 1; b = 4'b0010;
    #10 a = 0; b = 4'b0100;
    #10 a = 1; b = 4'b0000;
    #10 
    $finish;
  end 
  
  property p;
    @(posedge clk) a |-> $onehot0(b); // only one bit has to be high or all bits to be low(0000)
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
    
