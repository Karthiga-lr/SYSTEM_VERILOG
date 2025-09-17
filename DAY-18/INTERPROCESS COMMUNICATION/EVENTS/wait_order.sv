module waitorder;
  event e1,e2,e3;
  
  initial begin
    $display("%0t Waiting for e1, e2, e3 in order", $time);
    wait_order(e1, e2, e3);
    $display("%0t Correct order observed!", $time);
  end

  initial begin
    #5 ->e1;
    #10 ->e2;
    #15 ->e3;
  end
endmodule
