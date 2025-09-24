class Producer;
  mailbox m;
  int data;

  function new(mailbox m_in);
    this.m = m_in;
  endfunction

  task send_data();
    foreach (data[i]) begin end 
    data = 10;
    m.put(data);
    $display("[%0t] Producer: put data = %0d", $time, data);

    data = 20;
    m.put(data);
    $display("[%0t] Producer: put data = %0d", $time, data);
  endtask
endclass


class Consumer;
  mailbox m;
  int peeked_val;

  function new(mailbox m_in);
    this.m = m_in;
  endfunction

  task check_data();
    if (m.try_peek(peeked_val))
      $display("[%0t] Consumer: peeked value = %0d", $time, peeked_val);
    else
      $display("[%0t] Consumer: mailbox empty, peek failed", $time);

    m.get(peeked_val);
    $display("[%0t] Consumer: got value = %0d", $time, peeked_val);

    if (m.try_peek(peeked_val))
      $display("[%0t] Consumer: peeked value = %0d", $time, peeked_val);
    else
      $display("[%0t] Consumer: mailbox empty, peek failed", $time);

    m.get(peeked_val);
    $display("[%0t] Consumer: got value = %0d", $time, peeked_val);

    if (m.try_peek(peeked_val))
      $display("[%0t] Consumer: peeked value = %0d", $time, peeked_val);
    else
      $display("[%0t] Consumer: mailbox empty, peek failed", $time);
  endtask
endclass


module tb;
  mailbox mb = new(2);
  Producer p;
  Consumer c;

  initial begin
    p = new(mb);
    c = new(mb);

    p.send_data();
    $display("----- Now consumer checks mailbox -----");
    c.check_data();
  end
endmodule
