module overlapped_implication_tb;
  logic clk, a, b;
  
  initial clk = 0;
  always #5 clk = ~clk;

  initial begin
    a = 0; b = 0;
    #12 a = 1; b = 1;   
    #10 a = 1; b = 0;   
    #10 a = 0; b = 1;   
    #10 a = 1; b = 1;   
    #20 $finish;
  end
  
  property p_overlapped;
    @(posedge clk)a|->b;
  endproperty
  
  assert property(p_overlapped)
    $display("%0t PASS: a implies b (overlapped)", $time);
    else
      $error("%0t FAIL: a was high but b was low", $time);
    endmodule
