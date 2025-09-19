module semaphore_ex;
  semaphore sem = new(4);
  
  initial begin
    fork
      begin
      #30;sem.get(2);
      $display("%0t Thread 1 got 2 keys",$time);
      #15; sem.put(2);
      $display("%0t Thread 1 returned 2 keys",$time);
  end
      begin
        #10; sem.get(1);
        $display("%0t Thread 2 got 1 keys",$time);
        #15; sem.put(1);
        $display("%0t Thread 2 returned 1 keys",$time);
      end
    join
  end
endmodule
