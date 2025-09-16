interface count_if #(parameter N=4);
  logic clk,reset;
  logic[N-1:0] counter;
endinterface

module counter #(parameter N=4)(
    input logic clk,
    input logic reset,
    output logic [N-1:0] counter
  );
  logic [N-1:0] count_reg;
  
  always_ff@(posedge clk or posedge reset)begin
    if (reset)
      count_reg <= 0;
    else
      count_reg <= count_reg +1;
  end
  assign counter = count_reg;
endmodule

module tb;
  
  count_if inf();
  defparam inf.N=1;
  counter dut(.clk(inf.clk),.reset(inf.reset),.counter(inf.counter));
  defparam dut.N=1;
  initial begin
    inf.clk = 0;
    forever #5 inf.clk = ~inf.clk;
  end
  initial begin
    $monitor("[%0t] counter = %0d", $time,inf.counter);
    
    inf.reset = 1; #5;
    inf.reset = 0;
    #60 $finish;
  end
endmodule
