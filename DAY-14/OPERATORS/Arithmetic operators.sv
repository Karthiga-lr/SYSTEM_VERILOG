module arithmetic_operator;
int a = 5, b= 10;
int x;
initial begin
  $display("The value of a: %0d",a);
  $display("The value of b: %0d",b);
  $display("The arithmetic operation starts:");
  x = a + b;
  $display("The addition operator :%0d",x);
   x = a - b;
  $display("The subtraction operator :%0d",x);
   x = a*b;
  $display("The multiplication operator :%0d",x);
   x = a/b;
  $display("The division operator :%0d",x); //quotient
   x = a%b;
  $display("The modulos operator :%0d",x);   // reminder
   x = a** b;
  $display("The a to the power of b operator :%0d",x);
end
endmodule
