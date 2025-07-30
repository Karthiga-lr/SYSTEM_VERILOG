class solve_example;
  rand int a,b,c;
  constraint calc{a inside{[1:10]};
                  b inside {[1:10]}; c == a+b;
                  solve a before b;}
endclass
module tb;
  solve_example test;
  initial begin
  test = new();
    test.randomize();
    $display("a = %0d b = %0d c = %0d",test.a,test.b,test.c);
  end
endmodule
