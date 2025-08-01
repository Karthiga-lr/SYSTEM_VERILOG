class cons_dis;
  rand bit [3:0] value;
  constraint c1 {value == 5;}
endclass

module test;
  initial begin
    cons_dis d1;
    d1 = new();
    for (int i = 0;i <=5;i++)begin
      if(d1.randomize())
        $display("Iteration = %0d, Randomization occured at value = %0d",i,d1.value);
    else
      $display("Randomization is failed");
    end
    for (int i =0; i <=5; i++)begin
      d1.c1.constraint_mode(0);
      $display("Disable operation",d1.c1.constraint_mode());
    end
  end
endmodule
                       
