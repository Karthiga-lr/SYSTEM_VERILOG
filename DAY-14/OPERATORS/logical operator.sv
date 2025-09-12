module logical_operator;
  logic[0:7] a,b,c,x,y,z;
  
  initial begin
    a = 4'd8;
    b = 3'b101;
    c = 1'bx;
    x = a && c;
    $display("Check the logical and operation: %0d",x);
    y = b || c;
    $display("Check the logical or operation: %0d",y);
    z = !b;
    $display("Check the logical not operation:%0d",z);
  end
endmodule
