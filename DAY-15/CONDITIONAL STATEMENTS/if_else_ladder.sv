module if_else_ladder;
  int a,b,c;
  initial begin
    a = 15;
    b = 20; 
    c = 12;
    $display("The values of a = %0d, b = %0d, c = %0d",a,b,c);
    if(a>b) begin
      $display("a is greater than b");
    end else if (b<c) begin
      $display("b is less than c");
    end else if (c>0) begin
      $display("c is greater than the value 0");
  end
  end
endmodule  
