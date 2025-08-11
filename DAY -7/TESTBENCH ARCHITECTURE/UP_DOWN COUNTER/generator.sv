class generator;
  transaction tr;
  mailbox gen2drv;
  event scb2gen;
  function new(mailbox m, event s);
    gen2drv = m;
    scb2gen = s;
  endfunction
  task main();
    int i;
    for (i=0;i<10;i++)begin
      tr = new();
      if(!tr.randomize())begin
        $display("Randomization is failed");
      end else begin
        tr.display("Generator class signal");
        gen2drv.put(tr);
        @scb2gen;
      end
    end
  endtask
endclass
