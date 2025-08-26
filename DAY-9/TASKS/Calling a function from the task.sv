module func_from_task_exe;
  initial begin
    check_number(7);
    check_number(20);
  end
  
  task check_number(input int n);
    #1;
    if(is_even(n))
      $display("@0t ns :%0d is EVEN",$time,n);
    else
      $display("@0t ns :%0d is ODD",$time,n);
  endtask
  
  function bit is_even(int x);
    return(x % 2 == 0);
  endfunction
endmodule
