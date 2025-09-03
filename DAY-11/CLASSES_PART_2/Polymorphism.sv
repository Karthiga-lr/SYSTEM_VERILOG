// Code your design here
class shape;
  virtual function void display();
    $display("generate shape");
    endfunction 
endclass

class circle extends shape;
  function void display();
    $display("Drawing a circle");
  endfunction 
endclass

class square extends shape;
  function new();
    endfunction 
  function void display();
    $display("Drawing a square");
    endfunction 
endclass

module tb;
  initial begin
    shape s;
    circle c;
    square sq;
    c = new();
    s = c;
    s.display();
    sq = new();
    s = sq;
    s.display();
  end
endmodule
