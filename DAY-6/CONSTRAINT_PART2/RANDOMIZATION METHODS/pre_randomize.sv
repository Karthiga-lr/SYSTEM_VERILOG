class prerandom_cons;
  rand bit [3:0] range;
  int i;
  
  function void pre_randomize();
    if(i%2 ==0)begin
      rand_mode(0);
      $display("Randomization is stopped");
    end
    else
      rand_mode(1);
    i++;
  endfunction
endclass
module test;
  initial begin
    prerandom_cons ts1 = new();
    for (int i =0; i<=5; i++)begin
      $display("calling randomization");
        if(ts1.randomize())
        $display("Iteration = %0d Randomize = %0d",i,ts1.range);
    else
      $display("Randomization is failed");
    end
  end
endmodule
