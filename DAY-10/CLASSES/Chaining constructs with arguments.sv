class base;
  int id;
  function new(int i = 0);
  id = i;
    $display("Base class = %0d",id);
  endfunction
endclass
class child extends base;
  string name;
  function new(int i, string n);
    super.new(i);
       name = n;
    $display("child class = %0s",name);
    endfunction
endclass
class grandchild extends child;
  int score;
  function new(int i, string n, int s);
     super.new(i,n);
      id = i;
      name = n;
      score = s;
    $display("grandchild class = %0d",score);
    endfunction

function void display();
  $display("Final range: id = %0d, name = %0s, score = %0d",id,name,score);
endfunction
endclass

module tb;
  initial begin
    grandchild g1 = new(10,"Latha",95);
    g1.display();
  end
endmodule
