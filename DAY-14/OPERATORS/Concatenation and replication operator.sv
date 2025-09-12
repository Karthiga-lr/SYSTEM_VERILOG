module conca_rep;
  logic [0:3] a,b,c;
  int y;
  
  initial begin
   a = 1'b1;
   b = 4'b1011;
   c = 4'b1110;
    
    $display("The value of a = %0b, b= %0b, c = %0b", a,b,c);
    
    y = {a,b,c};
    
    $display("The concatenation operator value of x: %0b", y);
    
    #20;
    y = {a,b,{5{c}}};
    $display("The concatenation and replication operator value of x:%0b",y);
  end
endmodule
