module tb_disable_fork;
  initial begin
    $display("[%0t] parent started",$time);
    fork
      begin
        #5 $display("[%0t] child1 finished", $time);
      end
      begin
        #15 $display("[%0t] child2 finished",$time);
      end
      begin
        #25 $display("[%0t] child3 finished",$time);
      end
    join_any
    disable fork;
      $display("[%0t] parent after disable fork", $time);
      end
      endmodule
