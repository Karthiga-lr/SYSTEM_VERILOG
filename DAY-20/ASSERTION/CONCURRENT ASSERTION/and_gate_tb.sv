module AND_gate_tb;
  reg a,b,clk;
  wire y;
  
  AND_gate dut (.a(a),.b(b),.clk(clk),.y(y));
  
  always #5 clk = ~clk;
  
  initial begin
    $monitor ("\na=%0b b=%0b y=%0b", a, b, y);
    
    clk <=0;
    a = 0; b=0;
    
    #10 a = 0; b = 1;
    #10 a = 1; b = 0;
    #10 a = 1; b = 1;
    #15 $finish;
  end
  
  sequence seq;
    @(posedge clk)(a==1 && b==1);
  endsequence
  
  property ppt;
    seq;
  endproperty
  
  assert property(ppt)
    $display("%0t, a = 1 and b = 1 assertion success",$time);
    else
      $display("%0t, a=%0b and b=%0b,assertion failure", $time,a,b);
  initial begin
    $dumpfile("test.vcd");
    $dumpvars();
  end
    endmodule
    
