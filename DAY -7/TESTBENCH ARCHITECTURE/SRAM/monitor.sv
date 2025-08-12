class monitor;
  virtual intf vif;
  mailbox mon2scb;
  
  function new(virtual intf v, mailbox m);
    vif = v;
    mon2scb = m;
  endfunction
  
  task main();
    transaction tr;
    tr = new();
    for(int i = 0; i <=100; i++)begin
      @(posedge vif.clk)
      tr.clk = vif.clk;
      tr.rst = vif.rst;
      tr.wr = vif.wr;
      tr.addrs = vif.addrs;
      tr.din = vif.din;
      tr.dout = vif.dout;
      mon2scb.put(tr);
      tr.display("Monitor Class Signal");
    end
  endtask
endclass
      
