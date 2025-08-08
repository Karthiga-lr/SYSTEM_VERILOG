`include "interface.sv"
`include "test.sv"

module testbench;
  intf intf_if();
  test tst(intf_if);
  
  initial begin
    intf_if.clk = 0;
    forever #5 intf_if.clk = ~intf_if.clk;
  end
  
  dff dut (.clk(intf_if.clk),.rst(intf_if.rst),.d(intf_if.d),.q(intf_if.q));
endmodule
