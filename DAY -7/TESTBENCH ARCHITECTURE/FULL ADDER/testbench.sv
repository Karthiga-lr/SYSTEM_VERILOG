`include "interface.sv"
`include "test.sv"

module testbench;
  inti inti_intf();  // instantiate interface
  test tst(inti_intf);  // pass interface to test

  fa dut(.a(inti_intf.a),.b(inti_intf.b),
        .cin(inti_intf.cin),
        .s(inti_intf.s),.cout(inti_intf.cout));
endmodule
