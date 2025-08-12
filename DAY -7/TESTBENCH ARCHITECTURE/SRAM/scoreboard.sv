class scoreboard #(parameter addr =3,parameter data = 4);
  transaction #(addr,data) tr;
  mailbox mon2scb;
  event scb2gen;
  bit [data -1:0] temp_mem [0:(1<< addr) - 1];
  
  function new(mailbox m2s,event s);
    mon2scb = m2s;
    scb2gen = s;
  endfunction
  
  task run();
    for(int i =0; i<=100; i++)begin
      tr = new();
    mon2scb.get(tr);
    tr.display("Scoreboard signals");
    if(tr.rst) begin
      foreach (temp_mem[i])begin
        temp_mem[i] = 0;
    end
    end
      else if(tr.wr)begin
        temp_mem [tr.addrs] = tr.din;
        $display("Write addr = %0b, din = %b",tr.addrs,tr.din);
      end else begin
          if (tr.dout == temp_mem [tr.addrs])begin
            tr.display("PASS");
          end else 
              tr.display("FAIL");
          end
        
      ->scb2gen;
    end
  endtask
endclass
