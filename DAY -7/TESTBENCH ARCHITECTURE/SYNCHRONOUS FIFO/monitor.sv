class monitor;
  virtual intf vif;
  mailbox mon2scb;
  
  function new(virtual intf v, mailbox m)
    vif = v;
    mon2scb = m;
  endfunction
  
  task main();
    transaction tr;
    tr = new();
    for(int i = 0; i<=10; i++)begin
      @(posedge vif.clk)
      tr.clk = vif.clk;
      //tr.rst_n = rst_n.clk;
      tr.wr_en = wr_en.clk;
      tr.rd_en = rd_en.clk;
      tr.data_in = data_in.clk;
      tr.data_out = data_out.clk;
      tr.empty = empty.clk;
      tr.full = full.clk;
      mon2scb.put(tr);
      tr.display("Monitor Class Signals");
    end
  endtask
endclass
