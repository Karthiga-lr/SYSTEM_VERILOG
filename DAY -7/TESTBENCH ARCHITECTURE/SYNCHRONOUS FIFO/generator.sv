class generator;
  transaction tr;
  mailbox gen2drv;
  event scb2gen;
  function new(mailbox m,event s);
    gen2drv = m;
    scb2gen = s;
  endfunction
  task main();
    tr = new();
    for(int i = 0; i<=10; i++)begin
      if(!tr.randomize())
        $display("Randomization is failed");
    else 
      tr.display("Generator Class Signal");
      gen2drv.put(tr);
    end
    @scb2gen;
  endtask
endclass
        

