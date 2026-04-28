class mail_box_1;
  int a;
  int i;
  mailbox m;
  
  function new(mailbox m1);
    this.m = m1;
  endfunction
  
  task A();
      for(i = 0;i < 4; i++)begin
      a++;
      m.put(a);
      $display("Ttransmitter at the value a = %0d",a);
    end
  endtask
endclass
  
class mail_box_2;
  int a;
  int i;
  mailbox m;
  
  function new(mailbox m2);
    this.m = m2;
  endfunction  
  
  task b();
    begin
      m.get(a);
      $display("Receiver at the value a = %0d",a);
    end
  endtask
endclass
  
module tb;
  mail_box_1 a1;
  mail_box_2 a2;
  mailbox m = new();
  initial begin
    a1 = new(m);
    a2 = new(m);
    repeat(5) begin
    a1.A();
    $display(".............///////...........");
    a2.b();
  end
  end
endmodule
