class gen;
  rand bit [3:0] a;
  constraint cls1 { a == 5;}
endclass

module test;
  initial begin
  gen t1;
  t1 = new();
    for(int i=1; i<=10; i++)begin
      if(t1.randomize() with {a ==3;})
         $display("Randomization of a = %0d",i,t1.a);
         else
           $display("Randomization is failed");
    end
  end
endmodule
