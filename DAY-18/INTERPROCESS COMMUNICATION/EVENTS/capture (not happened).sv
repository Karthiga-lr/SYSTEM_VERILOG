module wait_example;
  event e;
  initial begin
    $display($time, " Triggering the event");
    ->e;  // triggers the event
  end

  initial begin
    $display($time, " Waiting using wait");
    wait(e.triggered);
    $display($time, " Event triggered (wait)");
  end

  initial begin
    $display($time, " Waiting using @");
    @(e); // it cannot capture at the same simulation time of trigger
    $display($time, " Event triggered (@)");    
  end
endmodule
