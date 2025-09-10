module kill_example;
  process p1;
  event e1;
  initial begin
    fork
      begin
        p1 = process::self();
        $display("[%0t] process 1 started",$time);
        #5;
        $display("[%0t] process 1 finished",$time);
      end
      
      begin
        #3;
        $display("[%0t] p2 killing p1",$time);
        p1.kill();
        $display("[%0t] After kill, p1.status = %s",$time,p1.status());
      end
    join
  end
endmodule
