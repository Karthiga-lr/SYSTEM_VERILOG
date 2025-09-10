module tb_fork_join_none;
  initial begin
    $display("[%0t] parent starts",$time);
    fork 
      begin
        #5 $display("[%0t] child1 none",$time);
      end
      begin
      #15 $display("[%0t] child2 none", $time);
      end
    join_none
    $display("[%0t] parent doesn't until the chils finishes",$time);
    #20;
  end
endmodule
