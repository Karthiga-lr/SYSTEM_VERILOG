
class A;
  int a;
  int i;
  mailbox m;
  
  function new(mailbox m1);
    this.m = m1;
  endfunction
  
  task check();
    
    if(m==null)
      $display("Mailbox is not create");
    else
      $display("Mailbox is created");
    for(i =0; i<=5; i++)begin
      a++;
      $display("Iteration = %0d",i);
          $display("value of a = %0d",a);
      end
      m.put(a);
    $display("value of a = %0d",a);
  endtask
endclass

module tb;
  A a1;
  mailbox mb = new();
  
  initial begin
    a1 = new(mb);
    repeat(5)begin
      a1.check();
    end
  end
endmodule
