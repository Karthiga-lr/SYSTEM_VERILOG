class generator;
  trans tr;  //transaction instancename
  mailbox gen2drv;
 
  function new(mailbox m);
    gen2drv = m;
  endfunction
  task main();
    int i;
    for (i=0;i<3;i++)begin
      tr = new();
      if(!tr.randomize())begin
        $display("Randomization is failed");
      end else begin
        tr.display("Generator class signal");
        gen2drv.put(tr);
      end
    end
  endtask
endclass
 
