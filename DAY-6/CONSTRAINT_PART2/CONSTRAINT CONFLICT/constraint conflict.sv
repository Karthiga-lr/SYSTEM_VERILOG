class range;
  rand bit [3:0] x;
  constraint cls1 { x<12;}
  constraint cls2 { x>12;}
endclass

module test;
  initial begin
  range t1;
  t1 = new();
  if(t1.randomize())begin
    $display("Randomization of x = %0d",t1.x);
    $display("Randomization occurs");
    end else
      $display("Randomization is failed"); 
      $display("Randomization of x = %0d",t1.x);
  end
endmodule
    
