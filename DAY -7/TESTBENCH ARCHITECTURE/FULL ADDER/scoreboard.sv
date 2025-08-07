class scoreboard;
  mailbox mon2scb;
  
  function new(mailbox m);
    mon2scb = m;
  endfunction
  
  task main();
    trans tr;
    int expec_sum,expec_carry;
    for (int i = 0; i< 3;i++)begin
      mon2scb.get(tr);
      tr.display("Scoreboard signals");
      expec_sum = tr.a^tr.b^tr.cin;
      expec_carry = (tr.a & tr.b)|(tr.a & tr.cin)|(tr.b & tr.cin);
      if ((expec_sum == tr.s) && (expec_carry == tr.cout))
        $display("PASSED");
      else
        $display("FAILED");
    end
  endtask
endclass
