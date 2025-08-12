interface intf();
  bit clk;
  bit rst;
  bit wr;
  logic [2:0] addrs;
  logic [3:0] din;
  logic [3:0] dout;
endinterface
