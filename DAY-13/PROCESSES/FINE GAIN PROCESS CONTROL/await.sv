module await_tb;
  process p1,p2;
  initial begin
    fork 
      begin
        p1 = process::self();
        $display("[%0t] P1 is running",$time);
        wait(p2 != null)
        p2.await();
        $display("[%0t] p1 resumes after p2 finished",$time);
      end
      begin
        p2 = process::self();
        #10;
        $display("[%0t] p2 is finished",$time);
      end
    join
  end
endmodule
