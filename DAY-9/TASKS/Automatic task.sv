module fact_task;
  
int result;
  initial begin
  factorial(5,result);
    $display("Factorial(5) = %0d",result);
  end
  
  task automatic factorial(input int n, output int result);
    int temp;
    if(n<=1)
      result =1;
    else begin
      factorial (n-1,temp);
      result = n*temp;
    end
  endtask
endmodule  
