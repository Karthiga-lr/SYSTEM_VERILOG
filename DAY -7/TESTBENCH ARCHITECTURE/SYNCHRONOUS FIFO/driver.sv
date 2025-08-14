class driver;
  virtual intf vif;
  mailbox gen2drv;
  
  function new(virtual intf v, mailbox m);
    vif = v;
    gen2drv = m;
  endfunction
  
  task main();
    transaction tr;
    for(int i =0; i<=10; i++)begin
      gen2drv.get(tr);
      vif.clk <= tr.clk;
      wr_en.clk <= tr.wr_en;
      rd_en.clk <= tr.rd_en;
      data_in.clk <= tr.data_in;
      data_out.clk <= tr.data_out;
      empty.clk <= tr.empty;
      full.clk <= tr.full;
      tr.display("Driver Class Signal");
    end
  endtask
endclass
