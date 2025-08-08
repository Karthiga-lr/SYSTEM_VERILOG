class driver;
  virtual intf vif;
  mailbox gen2drv;
  
  function new(virtual intf v, mailbox m);
    vif = v;
    gen2drv = m;
  endfunction
  
  task main();
    trans tr; 
    int i;
    for(int i =0; i<10; i++)begin
      gen2drv.get(tr);  //receive transaction from generator
    
      vif.rst <= tr.rst;
      vif.d <= tr.d;
      @(posedge vif.clk);
      #1;
      tr.clk = vif.clk;
      tr.q = vif.q;
      
      tr.display("-----Drive class signal-----");
     
    end
  endtask
endclass
