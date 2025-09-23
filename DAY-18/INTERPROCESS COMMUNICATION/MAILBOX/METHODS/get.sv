class A;
  int i;
  int a;
  mailbox m;
  
  function new(mailbox m1);
    this.m = m1;
  endfunction
  
  task tr_check();
    for(i = 0; i<=2; i++)begin 
      a++;
    $display("value of a =%0d",a);
    m.put(a);
    $display("value of a_put =%0d",a);
    end
  endtask
  
endclass

class B;
  int i;
  int a;
  mailbox m;
  
  function new(mailbox m2);
    this.m = m2;
  endfunction
  
  task rec_check();
    for(i= 0; i<=4; i++)begin
    m.get(a);
    $display("value of a_get=%0d",a);
    end
  endtask
  
endclass

module tb;
  A a1;
  B b1;
  mailbox main = new();
  initial begin
    a1 = new(main);
    b1 = new(main);
    a1.tr_check();
    $display("---------------------------");
    b1.rec_check();
  end
endmodule  
