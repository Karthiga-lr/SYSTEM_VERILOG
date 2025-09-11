module resume_tb;
  process p1,p2;
  initial begin
    fork
      begin
        p1 = process::self();
        $display("[%0t] process 1 is running",$time);
        #10;
       
        $display("[%0t] process 1 waiting to be suspended",$time);
        #20;
        $display("[%0t] process 1 is still alive",$time);
      end
      
      begin
        p2 = process::self();
        $display("[%0t] process 2 is running",$time);
        #15;
        p1.suspend();
        $display("[%0t] process 1 is going to be suspended",$time);
        #25;
        p1.resume();
        $display("[%0t] process 2 is resuming",$time);
      end
    join
  end
endmodule
