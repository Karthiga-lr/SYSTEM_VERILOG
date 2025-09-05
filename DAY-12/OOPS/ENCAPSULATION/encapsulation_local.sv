class simple_loc_encaps;
  int a;
  local int b;   //local (only inside the class)
  
  function void set_values(int x,int y);
    a = x;
    b = y;
  endfunction
  
  function void show();
    $display("Values of a = %0d, b = %0d",a,b);
  endfunction
endclass
  
  module tb;
    initial begin
    simple_loc_encaps s;
    s = new();
    s.set_values(10,30);
    s.show();
    s.a = 20;
    s.show();
    end
  endmodule
