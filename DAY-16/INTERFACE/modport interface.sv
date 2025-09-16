interface counter_if;
  logic clk,rst;
  logic [3:0] count;
  modport dut_mp(input clk, input rst, output count);
  modport tb_mp(output clk, output rst, input count);
endinterface

module counter(counter_if.dut_mp inf);
  always_ff @(posedge inf.clk or posedge inf.rst)begin
    if(inf.rst) 
      inf.count <=0;
  else
    inf.count <= inf.count+1;
    end
endmodule

module tb(counter_if.tb_mp inf);
  initial begin
    inf.clk = 0;
    inf.rst = 1;
    #10;
    inf.rst = 0;
    repeat(10) begin 
      #5;
      inf.clk = ~inf.clk;
      if(inf.clk)
      $display("[%0t]time, counter = %0d",$time,inf.count);
    end
  end
endmodule

module top;
  counter_if inf();
  counter c1 (inf);
  tb t1(inf);
endmodule
