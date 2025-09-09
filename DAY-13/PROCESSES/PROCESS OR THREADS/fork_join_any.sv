module tb_fork_join_any;
  initial begin
    $display("[%0t] parent starts",$time);
    fork 
      begin
        #5 $display("[%0t] child1 done",$time);
      end
      begin
        #15 $display("[%0t] child2 done", $time);
      end
    join_any
    $display("[%0t] parent continuous after any child done",$time);
    #20;
  end
endmodule
