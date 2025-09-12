module relational_operator;
  logic[2:0] a,b;
  initial begin
    a = 3'b101;
    b = 3'b111;

    $display("The value of a is:%0b",a);
    $display("The value of b is:%0b",b);
    $display("Check the value of a is greater than b is %0b",a > b);
    $display("Check the value of a is lesser than b is %0b",a < b);
    $display("Check the value of a is greater than or equal to is %0b",a >= b);
    $display("Check the value of a is less than or equal to b is %0b",a <= b);
  end
endmodule  
