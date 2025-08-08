class scoreboard;
  mailbox mon2scb;
  bit prev_d;

  function new(mailbox m);
    mon2scb = m;
    prev_d = 0;
  endfunction

  task main();
    trans tr;
    forever begin
      mon2scb.get(tr);
     
      if ((tr.rst && tr.q == 0) || (!tr.rst && tr.q == tr.d)) begin
        $display("PASSED - clk=%0b rst=%0b d=%0b q=%0b",
                  tr.clk, tr.rst, tr.d, tr.q);
      end
      else begin
        $display("FAILED - clk=%0b rst=%0b d=%0b q=%0b",
                  tr.clk, tr.rst, tr.d, tr.q);
      end
    end
  endtask
endclass
      
