class trans;
  rand bit a;
  rand bit b;
  rand bit cin;
  bit s;
  bit cout;
  constraint con1 {a dist { 0 :=2, 1 :=2}; b dist { 0 :=2, 1 :=2}; cin dist {0 :=1, 1 :=3};}
  function void display( string func);
    $display("%s",func);
    $display("a = %b b = %b cin = %b s = %b carry = %b", a,b,cin,s,cout);
  endfunction
endclass
