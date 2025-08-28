class parent;
  int a;
  function new(int x=0);
    a = x;
    $display("Parent class = %0d",a);
  endfunction
endclass
class child extends parent;
  int b;
  function new(int y=0);
    super.new(10);
    b = y;
    $display("child class = %0d",b);
  endfunction
endclass
class grandchild extends child;
  int c;
  function new(int z=0);
    super.new(20);
    c = z;
    $display("Grandchild class = %0d",c);
  endfunction
endclass

module tb;
  initial begin
    grandchild g1 = new(25);
  $display("Final values : a =%0d, b= %0d, c=%0d",g1.a,g1.b,g1.c);
  end
endmodule
