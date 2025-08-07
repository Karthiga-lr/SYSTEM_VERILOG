class driver;
  virtual inti vif;
  mailbox gen2drv;
  
  function new(virtual inti v, mailbox m);
    vif = v;
    gen2drv = m;
  endfunction
  
  task main();
    trans tr; 
    int i;
    for(int i =0; i<3; i++)begin
      gen2drv.get(tr);  //receive transaction from generator
      vif.a <= tr.a;
      vif.b <= tr.b;
      vif.cin <= tr.cin;
     
      #1;       
      tr.display("-----Drive class signal-----");
     
    end
  endtask
endclass
