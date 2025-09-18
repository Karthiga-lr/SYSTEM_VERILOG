module block_multiple_waiters;
  event ev;
  initial begin
    #5->ev; 
    $display("%0t Event triggered", $time);
  end

  initial begin
    @(ev.triggered);
    $display("%0t Process 1 saw event", $time);
  end

  initial begin
    @(ev.triggered);
    $display("%0t Process 2 saw event", $time);
  end

  initial begin
    wait(ev.triggered);
    $display("%0t Process 3 saw event (wait)", $time);
  end
endmodule
