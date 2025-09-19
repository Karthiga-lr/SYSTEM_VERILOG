class producer;
  int data;
  mailbox m;
  
  function new(mailbox m1);
    this.m = m1;
  endfunction
  
  task produce();
    begin
    repeat(3) begin
      if(m.num() == 2)
        $display("Mailbox is full");
       else begin
        data++;
        m.put(data);
        $display("producer: %0d",$time,data);
      end
    end
    end
  endtask
endclass
class consumer;
  int data;
  mailbox m;
  
  function new(mailbox m1);
    this.m = m1;
  endfunction
  
  task consume();
    begin
        m.get(data);
    $display("consumer: %0d",$time,data);
    end
  endtask
endclass
module tb;
  
  producer p;
  consumer c;
  mailbox mb = new(2);
  
  initial begin
    p = new(mb);
    c = new(mb);
    
    repeat(3)begin
      p.produce();
      c.consume();
    end
  end
endmodule
