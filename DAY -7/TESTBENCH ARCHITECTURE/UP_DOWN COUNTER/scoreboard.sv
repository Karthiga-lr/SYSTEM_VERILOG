class scoreboard;
  mailbox mon2scb;
  event scb2gen;
  bit [3:0] expected_count;
  function new(mailbox m, event s);
    mon2scb = m;
    scb2gen = s;
    expected_count = 0;
  endfunction

task main();
  transaction tr;
  forever begin
    mon2scb.get(tr);
    tr.display("Scoreboard signals");

    if (tr.rst) begin
      if (tr.count == 0)
        $display("PASS: Reset , count=%0d", tr.count);
      else
        $display("FAIL: Reset error, got=%0d", tr.count);
      expected_count = 0; 
    end
    else begin
      if (tr.count == expected_count)
        $display("PASS: d=%0d, expected=%0d got=%0d", tr.d, expected_count, tr.count);
      else
        $display("FAIL: d=%0d, expected=%0d got=%0d", tr.d, expected_count, tr.count);

      if (tr.d)
        expected_count = (expected_count + 1) % 16; 
      else
        expected_count = (expected_count - 1) % 16; 
    end

    -> scb2gen;
  end
endtask
endclass
