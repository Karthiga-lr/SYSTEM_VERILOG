class packet;
  string a;
  int b;
  virtual task display(); //Virtual (runtime polymorphism) - child task executes
    a="Team";
    b=10;
    $display("a=%0s",a);
    $display("b=%0d",b);
  endtask
endclass

class pack1 extends packet;
  string c;
  int d;
  task display();
    c ="Green Team";
    d = 5;
    $display("c=%0s",c);
    $display("d=%0d",d);
  endtask
endclass

class pack2 extends packet;
  string e;
  int f;
  task display();
    e ="Blue Team";
    f = 4;
    $display("e=%0s",e);
    $display("f=%0d",f);
  endtask
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
