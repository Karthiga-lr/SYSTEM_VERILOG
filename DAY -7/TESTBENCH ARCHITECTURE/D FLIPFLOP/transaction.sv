class trans;
  rand bit d;
  bit q;
  rand bit rst;
  bit clk;
  constraint con1 {d dist { 0 :=2, 1 :=2}; rst dist { 0 :=3, 1 :=1};}
  function void display( string func);
    $display("%s",func);
    $display("clk = %b rst= %b d = %b q = %b", clk,rst,d,q);
  endfunction
endclass
