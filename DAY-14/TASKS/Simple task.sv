module simple_task_ex;
  int a = 15;
  int b = 10;
  int sum;
  
  initial begin
    $display("Simple Task");
    add(a,b,sum);
    $display("At %0t ns: %0d + %0d = %0d",$time,a,b,sum);
  end
  
  task add(input int x,y, output int res);
    #1;
    res = x+y;
  endtask
endmodule
