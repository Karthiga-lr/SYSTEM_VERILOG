class solve_example2;
  rand bit a;
  rand bit [3:0]b;
  constraint calc1{(a == 0) -> (b == 10);}
  constraint calc2{ solve a before b;}

endclass
module tb;
  initial begin
  solve_example2 test;
  test = new();
    for(int i = 0; i <=50; i++)
      if(test.randomize())
        $display("Iteration = %0d a = %0d b = %0d",i,test.a,test.b);
    else
      $display("Randomization is failed");
  end
endmodule
