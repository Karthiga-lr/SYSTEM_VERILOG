module semaphore_ex;
  semaphore sem;
  
  initial begin
    sem = new(3);
    $display("%0t semaphore created with three keys",$time);
  end
endmodule
