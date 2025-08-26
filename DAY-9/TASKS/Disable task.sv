module disable_threads;
  initial begin
    fork
      run_task();
      #15 disable run_task.t1;
    join
  end
task run_task();
  begin:t1
    $display("@0t ns: Thread 1 started", $time);
    #30;
    $display("@0t ns: Thread 1 finished", $time); //kills it
  end:t1
  
  begin:t2
    $display("@0t ns: Thread 2 started", $time);
    #10;
    $display("@0t ns: Thread 2 finished", $time);
  end:t2
endtask
endmodule
