
// Code your design here
class shape;
  int width,height;
  
    function new(int w, int h);
      width = w;
      height = h;
    endfunction
    
virtual function void display();
  $display("Drawing shape with width = %0d and height = %0d",width,height);
endfunction 
endclass
class rectangle extends shape;
  function new(int w, int h);
    super.new(w,h);
  endfunction 
  function void display();
    $display("Drawing rectangle with width = %0d and height = %0d",width,height);
    super.display();
  endfunction
endclass
module tb;
  initial begin
    shape s;
    rectangle r;
    r = new(10,50);
    s = r;
    s.display();
 end
endmodule I
