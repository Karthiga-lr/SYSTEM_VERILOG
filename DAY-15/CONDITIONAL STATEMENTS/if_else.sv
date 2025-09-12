module if_else;
  byte a;
  initial begin
    a = 3'b101;
    $display("The value of a:%0d",a);
    if(a==5)begin
      $display(" The value is true: %0b",a);
     end else begin
      $display("the value is false"); 
    end
  end
endmodule
