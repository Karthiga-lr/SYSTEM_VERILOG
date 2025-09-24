class A;
   int a;
   int i;
   mailbox m;

   function new(mailbox m1);
      this.m = m1;
   endfunction

   task tr_data();
     for (i = 0; i < 2; i++) begin
         a++;
         m.put(a);
        $display("[%0t] Transmitter: value of a = %0d", $time, a);
      end

      $display("put successful");
   endtask
endclass
class B;
   int a;
   int i;
   mailbox m;

  function new(mailbox m2);
      this.m = m2;
  endfunction
  
  task rc_data();
    for (i = 0; i < 3; i++) begin
     if (m.try_peek(a)) begin
            $display("[%0t] Peeking value of a = %0d", $time, a);
            $display("Peek successful");
         end
         else begin
            $display("Peek failed as mailbox is empty");
            return;
         end
      end
    m.get(a);
    $display("[%0t] Receiver: value of a = %0d", $time, a);
    $display("get successful");
    $display("Messages in mailbox = %0d",m.num());
  endtask
endclass

module tb;
  A a1;
  B b1;
  mailbox main = new(2);

   initial begin
      a1 = new(main);
      b1 = new(main);

      a1.tr_data();
      $display("...........");
      b1.rc_data();
      $display("..........");
      b1.rc_data();
      $display("End of program");
   end

endmodule
