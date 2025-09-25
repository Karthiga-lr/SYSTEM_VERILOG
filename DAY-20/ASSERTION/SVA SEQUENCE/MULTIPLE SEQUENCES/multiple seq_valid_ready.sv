module multiple_seq;
  logic clk;
  logic start, done,valid,ready;
  
  initial clk = 0;
  always #5 clk = ~clk;
  
  initial begin
    start = 0; done = 0; valid = 0; ready =0;
    
      #10 start = 1; valid =1; ready = 1;
      #10 start = 0;
      #10 done = 1;
      
      #10 start = 1; valid = 1; ready = 0;
      #10 start = 0;
      #10 done = 1;
      
      #20 $finish; 
    end
    
    sequence seq_A;
      start ##2 done;
    endsequence
    
   sequence seq_B;
      valid && ready;
   endsequence
    
    property comb_prop;
      @(posedge clk) seq_A |-> seq_B;
    endproperty
    
    assert property(comb_prop)
      $display("%0t pass:start->done with valid&ready",$time); // this line executes 35 ns
      else 
        $error("%0t Fail: condition not met",$time);// this line executes 65 ns
      endmodule
