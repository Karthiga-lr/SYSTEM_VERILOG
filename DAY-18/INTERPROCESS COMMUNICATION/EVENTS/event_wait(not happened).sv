module event_eg;
  event e;

  initial begin
    $display($time, " Triggering the event");
    #3 ->e;  // triggers the event
  end

  initial begin
    $display($time, " Waiting using wait");
    #5wait(e.triggered); // it cannot capture because the wait ns is high
    $display($time, " Event triggered (wait)");
  end

  initial begin
    $display($time, " Waiting using @");
    @(e); 
    $display($time, " Event triggered (@)");    
  end
endmodule
