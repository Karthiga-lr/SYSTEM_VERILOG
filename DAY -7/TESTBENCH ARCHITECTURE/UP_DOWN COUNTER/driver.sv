class driver;
  virtual intf vif;
  mailbox gen2drv;
  
  function new(virtual intf v, mailbox m);
    vif = v;
    gen2drv = m;
  endfunction
  
  task main();
    transaction tr; 
      vif.rst <= 1;
      vif.d   <= 0;
    repeat (2) @(posedge vif.clk);
    vif.rst <= 0;


    
    for(int i =0; i<10; i++)begin
      gen2drv.get(tr);  //receive transaction from generator
    
      vif.rst <= tr.rst;
      vif.d <= tr.d;
      @(posedge vif.clk); 
      
      tr.display("-----Drive class signal-----");
     
    end
  endtask
endclass
