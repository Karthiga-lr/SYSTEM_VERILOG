module seq_logic_tb;
  logic clk,x,y;
  
  initial clk = 0;
  
  always #5 clk=~clk;
  initial begin
  x = 0; y = 0;
  #10 x = 0; y = 1;
  #10 x = 1; y = 0;
  #10 x = 1; y = 1;
  #20 $finish;
  end
  
  sequence seq_logic;
    x && y;
  endsequence
  
  property prop_logic;
    @(posedge clk) seq_logic;
  endproperty
  
  assert property(prop_logic)
    $display("%0t Pass: x&&y is true",$time);
    else
      $error("%0t Fail: x&&y is false",$time);
    endmodule
