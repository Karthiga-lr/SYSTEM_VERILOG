module task_from_func;

  initial begin
    $display("Example fork join");
    #1  $display("calling func_start()", $time);
        func_start();  // function must be zero-time
        $display("returned from func_start()", $time);
    #20 $finish;
  end

  function void func_start();
    fork
      task_A();
      task_B();
    join_none       
  endfunction
  task task_A();
    #2 $display("Task A started",  $time);
    #7 $display("Task A finished", $time);
  endtask

  task task_B();
    #3 $display("Task B started",  $time);
    #4 $display("Task B finished", $time);
  endtask
endmodule
