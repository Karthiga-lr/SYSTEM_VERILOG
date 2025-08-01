class cons;
  rand bit [3:0] val;
  constraint val1 { val > 10; }
endclass

module test;
  initial begin
    cons t1;
    t1 = new();
    for (int i = 0; i < 3; i++) begin
      if (t1.randomize() with {val < 10;})  // conflict occurs because it cannot satisfy both val <10 and val>10
        $display("Iteration: %0d | Randomized value: %0d", i, t1.val);
      else
        $display("Iteration: %0d | Randomization FAILED", i);
    end
  end
endmodule
