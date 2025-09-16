module dff (
  input  logic clk,
  input  logic rst_n,
  input  logic d,
  output logic q
);
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n)
      q <= 0;     // Reset value
    else
      q <= d;     // Normal DFF operation
  end
endmodule
// Interface with clocking block
interface dff_if(input logic clk);
  logic rst_n;
  logic d, q;

  clocking cb @(posedge clk);
    default input #1step output #0;
    input q;
    output d, rst_n;
  endclocking
endinterface

// Testbench
module tb_cb;
  logic clk;
  dff_if inf(clk);
  dff dut(
    .clk(clk),
    .rst_n(inf.rst_n),
    .d(inf.d),
    .q(inf.q)
  );
  initial clk = 0;
  always #5 clk = ~clk;
  initial begin
    // Apply reset
    inf.rst_n = 0;
    inf.d     = 0;
    repeat(2) @(inf.cb); 
    inf.rst_n = 1;

    repeat(10) begin
      @(inf.cb);
      inf.cb.d <= $random;
      $display("[%0t] d=%0d q=%0d", $time, inf.cb.d, inf.cb.q);
    end

    $finish;
  end
endmodule
