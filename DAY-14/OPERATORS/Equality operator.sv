module equality_operator;
  logic[2:0]a,b,c,d;
  
  initial begin
    a = 3'b101;
    b = 3'b111;
    c = 3'b1x1;
    d = 3'b101;
    
    
    $display("check the logical equality: %0b", a == b);
    $display("check the logical equality: %0b", a != b);
    
    $display("check the case equality: %0b", c === d);
    $display("check the case equality: %0b", c !== d);
  end
endmodule
