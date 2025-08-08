class monitor;
  virtual intf vif;
  mailbox mon2scb;
  
  function new(virtual intf v, mailbox m);
    vif = v;
    mon2scb = m;
  endfunction
  
  task main();
    trans tr;
    int i;
    for(i=0; i<10;i++)begin
      @(posedge vif.clk); 
      #1;
      tr = new();
      tr.clk = vif.clk;
      tr.rst = vif.rst;
      tr.d = vif.d;
      tr.q = vif.q;
      
      mon2scb.put(tr);
      tr.display("Monitor class signals");
    end
  endtask
endclass
