module tb;
  process p1,p2;
  initial begin
    fork
      begin
        p1 = process::self();
        $display("[%0t] process 1 is running",$time);
        #10;
        p1.suspend();
        $display("[%0t] process 1 is suspended",$time);
      end
      
      begin
        p2 = process::self();
        $display("[%0t] process 2 is running",$time);
        #15;
        $display("[%0t] process 2 is finished",$time);
      end
    join
  end
endmodule
