module event_eg;
  event e;

  initial begin
    $display($time, " Triggering the event");
    #3 ->e;  // triggers the event
  end

  initial begin
    $display($time, " Waiting using wait");
    wait(e.triggered);
    $display($time, " Event triggered (wait)");
  end

  initial begin
    $display($time, " Waiting using @");
    @(e); 
    $display($time, " Event triggered (@)");    
  end
endmodule
