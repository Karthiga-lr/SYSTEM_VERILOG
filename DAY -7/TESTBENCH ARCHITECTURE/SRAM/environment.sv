`include "agent.sv"
`include "scoreboard.sv"

class environment;
  agent agt;
  scoreboard scb;
  mailbox mon2scb;
  event scb2gen;
  
  function new(virtual intf vif);
    mon2scb = new();
    //scb2gen = new();
    agt = new(mon2scb,scb2gen,vif);
    scb = new(mon2scb,scb2gen);
  endfunction
  
  task run();
    fork 
      agt.run();
      scb.run();
    join
  endtask
endclass
  
