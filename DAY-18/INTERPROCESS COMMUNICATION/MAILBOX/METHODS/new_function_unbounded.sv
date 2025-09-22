class A;
  int a;
  int i;
  mailbox m;
  
  function new(mailbox m1);
    this.m = m1;
  endfunction
  
  function void check();
    
    if(m==null)
      $display("Mailbox is not create");
    else
      $display("Mailbox is created");
    
  endfunction
  task tr_data();
    for(i =0; i<3; i++)begin
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
    a1.check();
    repeat(3)begin
      a1.tr_data();
    end
  end
endmodule
