class inline_con;
  rand bit [7:0] val1, val2;
  constraint value_1 { val1 > 10; val1 <70;}
  constraint value_2 { val2 > 100; val2 <300;}
endclass

module test;
  initial begin
    inline_con t1;
    t1 = new();
    repeat(5)begin
    t1.randomize();
      $display("Randomization of val1 and val2 is: %0d and %0d",t1.val1, t1.val2);
      t1.randomize() with {val1 >30; val1 <50;};  //neglected bc of override from constraint val1 [inside class]
      t1.randomize() with {val2 inside {[120:220]};};
      $display("Randomization after inline constraint val1 = %0d and val2 = %0d",t1.val1, t1.val2);
    end
  end
endmodule
