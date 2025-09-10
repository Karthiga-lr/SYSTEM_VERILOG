module tb_disable_fork;
  initial begin
    $display("[%0t] parent started", $time);
    fork 
      begin
        #5 $display("[%0t] child1 done",$time);
      end
      begin
        #20 $display("[%0t] child2 done",$time);
      end
    join_none
    
    $display("[%0t] parent continuous immediately",$time);
    wait fork;
      $display("[%0t] All child process completely",$time);
      end
      endmodule
