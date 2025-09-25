module seq_formal_args_tb;
  logic clk, a, b;

  initial clk = 0;
  always #5 clk = ~clk;

  initial begin
    a = 0; b = 0;
    #10 a = 1; b = 0;   
    #10 a = 1; b = 1;   
    #10 a = 0; b = 1;  
    #10 a = 1; b = 1;   
    #20 $finish;
  end
  sequence notype_seq(X, Y);
    X && Y;   
  endsequence

  property p_notype;
    @(posedge clk) notype_seq(a, b);
  endproperty

  assert property(p_notype)
    $display("%0t PASS: a && b is TRUE",$time);
  else
    $error("%0t FAIL: a && b is FALSE",$time);
endmodule
