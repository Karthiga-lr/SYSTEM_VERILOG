`include "transaction.sv";
`include "generator.sv";
`include "driver.sv";
`include "monitor.sv";

class agent;
  generator gen;
  driver drv;
  monitor mon;
  
  mailbox gen2drv;
  mailbox mon2scb;
  event scb2gen;
  virtual intf vif;
  
  function new(virtual inf v, mailbox m2s,event s);
    vif = v;
    mon2scb = m2s;
    scb2gen = s;
    gen2drv = new();
    
    gen = new(gen2drv,scb2gen);
    drv = new(vif,gen2drv);
    mon = new(vif,mon2scb);
    
  endfunction
  
  task run();
    fork 
    gen.main();
    drv.main();
    mon.main();
    join
  endtask
endclass
    
  
