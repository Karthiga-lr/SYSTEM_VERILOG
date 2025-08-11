class transaction;
  bit clk;
 rand bit rst;
  rand bit d;
  bit [3:0]count;
  constraint c1{ d dist {0 := 2, 1 := 2}; rst dist {0 := 3, 1 := 1};}
  function void display(string func);
    $display("%s",func);
    $display("clk = %b rst= %b d = %b count = %b", clk,rst,d,count);
  endfunction
endclass
