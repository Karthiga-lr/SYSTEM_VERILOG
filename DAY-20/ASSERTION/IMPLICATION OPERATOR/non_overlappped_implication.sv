module non_overlapped_imp_tb;
  logic clk, a, b;
  
  initial clk = 0;
  always #5 clk = ~clk;

  initial begin
    a = 0; b = 0;
    #10 a = 1; b = 1;
    #10 b = 1;
    #10 a = 1; b = 0; 
    #10 b = 0;
    #10 a = 0; b = 1;   
    #10 a = 1; b = 1; 
    #10 b = 1;
    #20 $finish;
  end
  
  property p_non_overlapped;
    @(posedge clk)a|=>b;
  endproperty
  
  assert property(p_non_overlapped)
    $display("%0t PASS: a implies b (non overlapped)", $time);
    else
      $error("%0t FAIL: a was high but b was low", $time);
    endmodule
