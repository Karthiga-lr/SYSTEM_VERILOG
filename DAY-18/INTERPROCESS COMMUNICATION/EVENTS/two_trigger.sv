module event_eg;
  event e;

  initial begin
    $display($time, " Triggering the event");
    #4 ->e;
    #3 ->e;  
  end

  initial begin
    $display($time," Waiting using wait");
    #2wait(e.triggered); 
    $display($time, " Event triggered (wait)");
  end

 initial begin
   $display($time," Waiting using @");;
   #1 @(e); 
   $display($time," First Event triggered (@)");
   @(e); 
   $display($time," Second Event triggered (@)");
  end
endmodule
