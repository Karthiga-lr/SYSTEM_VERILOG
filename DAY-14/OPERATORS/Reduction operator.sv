module reduction_op;
  logic [3:0] a;
  logic y;
  initial begin
    a = 4'b1011;
    $display("The value of a: %0d", a);
    
    y = &a;
    $display("The reduction of AND operator: %0d",y);
    y = |a;
    $display("The reduction of OR operator: %0d",y);
    y = !a;
    $display("The reduction of NOT operator: %0d",y);
     y = ~&a;
    $display("The reduction of NAND operator: %0d",y);
    y = ~|a;
    $display("The reduction of NOR operator: %0d",y);
    y = ^a;
    $display("The reduction of XOR operator: %0d",y);
    y = ~^a;
    $display("The reduction of 	XNOR operator: %0d",y);
  end
endmodule
