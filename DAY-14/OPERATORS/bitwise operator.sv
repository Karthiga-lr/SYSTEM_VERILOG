module bitwise_operator;
  logic[3:0] a,b,c,x;
  initial begin
    a = 4'b1011;
    b = 3'b110;
    c = 4'b1x11;
    
    x = a & b;
    $display("The AND operation is: %0b", x);
    
    x = a | c;
    $display("The OR operation is: %0b", x);
    x = ~c;
    $display("The NOT operation is: %0b", x);
    
    x = ~(a & b);
    $display("The NAND operation is: %0b", x);
    
    x = ~(a | c);
    $display("The NOR operation is: %0b", x);
    x = a ^ b;
    $display("The XOR operation is: %0b", x);
    x = ~(a ^ b);
    $display("The XNOR operation is: %0b", x);
  end
endmodule
