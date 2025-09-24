module one_hot_fsm_tb;
  logic clk,rst;
  logic [2:0] state;
  
  one_hot_fsm dut(.clk(clk),.rst(rst),.state(state));
  
  always #5 clk = ~clk;
  
  initial begin
    clk = 0;rst = 1;
    #10 rst = 0;
    #50 force state = 3'b110;
    #20 release state;
    #40 $finish;
  end
  
  always@(posedge clk)begin
    assert($onehot(state))
      $display("%0t: PASS ,state = %0b is one-hot",$time,state);
    else
      $error("%0t: FAIL, state=%0b is NOT one-hot", $time, state);
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
  end
endmodule
    
