`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
`include "agent.sv"
`include "scoreboard.sv"

class environment;
  agent agt;
  scoreboard scb;

  mailbox mon2scb;

  virtual intf vif;

  function new(virtual intf v);
    vif = v;
    mon2scb = new();
    agt = new(v, mon2scb);
    scb = new(mon2scb);
  endfunction
  task test_run();
    fork
      agt.run();
      scb.main();
    join
  endtask
endclass
