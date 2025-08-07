class monitor;
  virtual inti vif;
  mailbox mon2scb;
  
  function new(virtual inti v, mailbox m);
    vif = v;
    mon2scb = m;
  endfunction
  
  task main();
    trans tr;
    int i;
    for(i=0; i<3;i++)begin
      #1;
      tr = new();
      tr.a = vif.a;
      tr.b = vif.b;
      tr.cin = vif.cin;
      tr.s = vif.s;
      tr.cout = vif.cout;
      
      mon2scb.put(tr);
      tr.display("Monitor class signals");
    end
  endtask
endclass
