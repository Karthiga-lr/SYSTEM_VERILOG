module blocking_event;
  event BJT;
  initial begin 
    $display("%0t triggering the event",$time);
    ->BJT;
  end 
  initial begin
    $display("%0t waiting for the event using wait",$time);
    wait(BJT.triggered);
    $display("%0t event BJT is triggered using wait",$time);
  end
  initial begin
    $display("%0t waiting for the event using @",$time);
    @(BJT.triggered);
    $display("%0t event BJT is triggered using @",$time);
  end
endmodule
