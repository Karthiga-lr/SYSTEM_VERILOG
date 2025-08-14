`include "agent.sv";
`include "scorebaord.sv";

class environment;
  agent agt;
  scoreboard scv;
  mailbox mon2scb;
  event s;
  
  function new(virtual intf vif);
    mon2scb = new();
    agt = new(vif,mon2scb,s);
    scb = new(mon2sb,scb2gen);
    
  endfunction
  
  task run();
    fork
      agt.run();
      scb.run();
    join
  endtask
endclass
      
