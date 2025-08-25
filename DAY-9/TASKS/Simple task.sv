module simple_task;
  int num = 26, den = 5, q,r;
  initial begin
    divide(num,den,q,r);
    $display("%0d/ %0d Quotient = %0d, Reminder = %0d", num,den,q,r);
  end
  
  task divide(input int a,b, output int quotient,reminder);
    quotient = a/b;
    reminder = a%b;
  endtask
endmodule
