module nand_gate_tb;
  reg a,b;
  reg clk;
  wire y;
  
  nand_gate dut(.a(a),.b(b),.y(y));
  
  always #5 clk = ~clk;
  
  initial begin
    clk = 0;a=0;b=0;
    #10 a=0;b=1;
    #10 a=1;b=0;
    #10 a=1;b=1;
    #20 $finish;
  end
  
  always@(posedge clk)begin
    assert (y == ~(a&b))
    $display("%0t PASS: a=%0b, b=%0b,y=%0b",$time,a,b,y);
    else
      $error("%0t: FAIL: a=%b, b=%b, y=%b (Expected=%b)", $time, a, b, y, ~(a & b));
  end
endmodule
