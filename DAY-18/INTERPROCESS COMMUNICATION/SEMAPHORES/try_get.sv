module sem_try_get;
  semaphore sem = new(1);
  initial begin
    fork
      begin
        if(sem.try_get(1))begin
          $display("%0t Thread 1 got the key",$time);
          #5 sem.put(1);
          $display("%0t Thread 1 returned the key",$time);
          end else
            $display("%0t Thread 1 failed",$time);
      end
        begin
          #2;
          if(sem.try_get(1))begin
            $display("%0t Thread 2 got the key",$time);
            sem.put(1);
            $display("%0t Thread 2 returned the key",$time);
            end else
              $display("%0t Thread 2 failed",$time);
         
        end
    join
  end
endmodule
