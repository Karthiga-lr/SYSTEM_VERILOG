class random_cons;
  rand bit [3:0] range;
  constraint c { range inside {[4:12]};}
endclass
module test;
  initial begin
    random_cons ts1 = new();
    for (int i =0; i<=20; i++)
        if(ts1.randomize())
        $display("Iteration = %0d Randomize = %0d",i,ts1.range);
    else
      $display("Randomization is failed");
  end
endmodule
