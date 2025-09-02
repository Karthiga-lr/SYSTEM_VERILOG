class packet;
  string a;
  int b;
  
  function new();
    a="Team";
    b=10;
  endfunction 
  virtual function void display(); //Virtual (runtime polymorphism) - child function executes
    $display("a=%0s",a);
    $display("b=%0d",b);
  endfunction
endclass

class pack1 extends packet;
  string c;
  int d;
  function new();
    c ="Green Team";
    d = 5;
  endfunction
  function void display();
    $display("c=%0s",c);
    $display("d=%0d",d);
  endfunction
endclass

class pack2 extends packet;
  string e;
  int f;
  function new();
    e ="Blue Team";
    f = 4;
  endfunction
  function void display();
    $display("e=%0s",e);
    $display("f=%0d",f);
  endfunction
endclass

module tb;
  initial begin
  packet pp0,pp1;
  pack1 p1;
  pack2 p2;
    p1 = new();
    p2 = new();
    pp0 = p1;    //pp0 points to child object pack1
    pp1 = p2;    //pp1 points to child object pack2
    
    pp0.display();
    pp1.display();
  end
endmodule
  
