module disable_inside_task;
  initial begin
    run_task();   // single call, no fork–join in initial
  end
  task run_task();
    fork
      begin : t1
        $display("@%0t ns: Thread-1 started",$time);
        #30;
        $display("@%0t ns: Thread-1 finished",$time);
      end
      begin : killer
        #15 disable t1;  // disable t1 after 15 ns
      end

      begin : t2
        $display("@%0t ns: Thread-2 started",$time);
        #10;
        $display("@%0t ns: Thread-2 finished",$time);
      end
    join
  endtask
endmodule
