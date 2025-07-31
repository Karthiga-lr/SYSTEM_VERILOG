class solve_example;
  rand int a,b,c;
  constraint calc{a inside{[1:10]};
                  b inside {[1:10]}; c == a+b;}
                  solve a before c;}
endclass
module tb;
  solve_example test;
  initial begin
  test = new();
    for(int i = 0; i <=10; i++)
      if(test.randomize())
        $display("Iteration = %0d a = %0d b = %0d c = %0d",i,test.a,test.b,test.c);
    else
      $display("Randomization is failed");
  end
endmodule
