class math;
  local function int square(int x);
    return x*x;
  endfunction
  function void show_square(int n);
    $display("Square of number %0d = %0d",n,square(n));
    endfunction
endclass
module tb;
  initial begin
    math m1;
    m1 = new();
    m1.show_square(5);
    m1.show_square(15);
  end
endmodule 
