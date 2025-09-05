virtual class A;
  int a,b,c;
  pure virtual function void display();
  pure virtual task sum();
endclass
class B extends A;
  virtual function void display();
    a = 10;
    $display("Value of a = %0d, b = %0d. c= %0d",a,b,c);
  endfunction
  virtual task sum();
    c = a+b;
    $display("Value of a=%0d, b=%0d, c=%0d",a,b,c);
  endtask
endclass
  module tb;
    B b1;
    initial begin
      b1 = new();
      b1.display();
      b1.b = 20;
      b1.sum();
    end
  endmodule
