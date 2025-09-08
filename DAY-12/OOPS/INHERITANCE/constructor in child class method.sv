class parent;
  int a;
  function new(int x);
    a = x;
  endfunction
endclass

class child extends parent;
  int b;
  function new(int x, int y);
    super.new(x);
    b = y;
  endfunction
  
  function void show();
    $display("a = %0d, b = %0d",a,b);
  endfunction
endclass

module tb;
  initial begin
    child c;
    c = new(10,20);
    c.show();
  end
endmodule
