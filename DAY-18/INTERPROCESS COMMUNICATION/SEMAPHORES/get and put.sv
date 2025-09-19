module put_and_get;
  semaphore sem = new(6);
  
  initial begin
    fork 
      begin
        $display("%0t first initial block",$time);
        sem.get(4);
        $display("%0t Thread 1 got 4 keys",$time);
        #5;
        sem.put(3);
        $display("%0t Thread 1 retuned 3 keys",$time);
      end
      begin
        sem.get(3);
        $display("%0t Thread 2 got 3 keys",$time);
        #20;
        sem.put(1);
        $display("%0t Thread 2 returned 1 keys",$time);
      end
    join
  end
endmodule
