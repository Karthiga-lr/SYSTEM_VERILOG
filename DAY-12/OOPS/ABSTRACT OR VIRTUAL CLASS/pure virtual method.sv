virtual class shape;
  pure virtual function void draw(); 
endclass

class square extends shape;
  function void draw();
    $display("Drawing a square");
    endfunction 
endclass

class circle extends shape;
  function void draw();
    $display("Drawing a circle");
    endfunction 
endclass

module tb;
  initial begin 
    shape s;
    square sq;
   circle c;
    
    sq = new();
    
    s = sq;
    s.draw();
    c = new();
    s = c;
    s.draw();
  end
  endmodule 
