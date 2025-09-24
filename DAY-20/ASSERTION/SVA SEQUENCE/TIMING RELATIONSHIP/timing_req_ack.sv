module timing_seq;
  logic clk, req, ack;
  
  initial clk = 0;
  always#5 clk = ~clk;
  
  initial begin
    req = 0; ack = 0;
    #12 req = 1;
    #10 req = 0;
    #20 ack = 1;
    #20 req = 1;
    #10 req = 0;
    #10 ack = 0;
    #50 $finish;
  end
  
  sequence req_ack_seq;
    req ##3 ack;
  endsequence
  
  property req_ack_prop;
    @(posedge clk)req_ack_seq;
  endproperty
  
  assert property(req_ack_prop)
    $display("%0t PASS: ack after 3 cycles",$time);
  else
    $error("%0t FAIL: ack not seen after 3 cycles",$time);
endmodule
