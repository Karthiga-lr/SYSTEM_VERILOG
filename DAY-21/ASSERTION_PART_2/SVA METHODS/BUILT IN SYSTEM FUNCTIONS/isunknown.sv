module is_unknown_method;
  bit clk,a;
  logic [3:0] b;
  
  always #5 clk = ~clk;
  
  initial begin
    a = 0; b = 4'b0000;
    #10 a = 0; b = 4'b0011;
    #10 a = 1; b = 4'b01x0;
    #10 a = 0; b = 4'b0100;
    #10 a = 1; b = 4'b00z0;
    #10 a = 0; b = 4'b1xx0;
    #10 a = 1; b = 4'b0xz1;
    #10 a = 1; b = 4'b0000;
    #10 a = 0; b = 4'b0100;
    #10 a = 1; b = 4'b0x11;
    #10 
    $finish;
  end 
  
  property p;
    @(posedge clk) a |-> $isunknown(b); 
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
    
