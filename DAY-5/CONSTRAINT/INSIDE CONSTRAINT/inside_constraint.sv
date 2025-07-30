class ins_con;
  rand bit [3:0] value;
  constraint c1{value inside {[5:10]};}
endclass

module val_range;
  initial begin
    ins_con in = new();
    for(int i =0; i<=10;i++)begin
      in.randomize();
      $display("Iteration = %0d, value = %0d",i,in.value);
    end
  end
endmodule
