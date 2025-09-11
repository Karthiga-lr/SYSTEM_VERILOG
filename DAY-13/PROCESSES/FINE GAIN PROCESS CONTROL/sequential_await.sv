module mul_await_tb;
  process p1,p2,p3;
  initial begin
    fork 
      begin
      p1 = process::self();
        $display("[%0t] P1 is running",$time);
      
      wait(p2!= null)
      wait(p3!= null);
      p2.await();
      $display("[%0t] p1 resumes after p2 is finished",$time);
      p3.await();
      $display("[%0t] p2 resumes after p3 is finished",$time);
      end
    
    begin
      p2 = process::self();
      #10;
      $display("[%0t] p2 is finished",$time);
    end
    
    begin
      p3 = process::self();
      #20;
      $display("[%0t] p3 is finished",$time);
    end
    join
  end
endmodule   
