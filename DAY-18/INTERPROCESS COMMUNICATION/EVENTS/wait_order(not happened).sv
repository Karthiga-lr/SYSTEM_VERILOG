module waitorder;
  event e1,e2,e3;
  
  initial begin
    $display("%0t Waiting for e1, e2, e3 in order", $time);
    wait_order(e1, e2, e3);
    $display("%0t Correct order observed!", $time);
  end

  initial begin
    #5 ->e2; // error because of wrong triggering order
    #10 ->e1;
    #15 ->e3;
  end
endmodule
