class A;
int a;
mailbox m;

function new(mailbox m1);
  this.m = m1;
endfunction

task tr_data();
  for(int i =0; i<=4; i++)begin
    a++;
  $display("Value of a = %0d",a);
  m.put(a);
  $display("Value of a_put = %0d",a);
  end
endtask
endclass

class B;
int a;
mailbox m;

function new(mailbox m2);
  this.m =m2;
endfunction

task rec_data();
  repeat(3)begin
    if(m.try_get(a))
      $display("Receiver a = %0d",a);
    else
      $display("Failed while getting the value as a mailbox is empty");
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
  a1.tr_data();
  $display("--------------------------------------");
  b1.rec_data();
  end
endmodule
