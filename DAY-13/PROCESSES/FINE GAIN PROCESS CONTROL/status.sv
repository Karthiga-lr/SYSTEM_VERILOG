module ex2;
  process p1;
  event e;
  
  initial begin
    fork 
      begin
        p1 = process::self();
        $display("[%0t] p1 waiting for e",$time);
        wait(e.triggered);
        $display("[%0t] p1 resumed, status = %s", $time,p1.status());
      end
    join_none
    
    #2 -> e;
    #1 $display("[%0t] outside: status = %s",$time, p1.status());
  end
endmodule
