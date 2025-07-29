class random;
  rand logic [2:0] a;
endclass

random r1;
module random_num;
  initial begin
    r1 = new();
    $display("Random number of non-cyclic");
    for(int i =0; i<=10; i++)begin
      if(r1.randomize())
        $display("Random number of a: %d",r1.a);
      else
        $display("Randomization failed");
    end
  end
endmodule
