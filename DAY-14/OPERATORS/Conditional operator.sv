module conditional_op;
  int a,b,y;
  initial begin
    a = 4'b1011;
    b = 4'b1110;
    
    $display("The value od a:%0b",a);
    $display("The value of b:%0b",b);
    
    y = a>b?1:0;
    $display("Check the value of y:%0b",y);  //it is false
  end
endmodule
