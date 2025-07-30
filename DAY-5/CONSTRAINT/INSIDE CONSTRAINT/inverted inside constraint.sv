class ins_con;
  rand bit [3:0] value;
  constraint c1{!(value inside {[5:10]});}
endclass

module val_range;
  initial begin
    ins_con t1 = new();
 for (int i = 0; i <= 30; i++) begin
      if(t1.randomize())
        $display("Iteration = %0d, value = %0d", i, t1.value);
      else
        $display("Randomization failed at iteration %0d", i);
    end
  end
endmodule

