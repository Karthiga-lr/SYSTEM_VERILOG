interface d_ff_if (input logic clk);
  logic q;   // driven only by DUT
endinterface
program tb(d_ff_if intf);  
  initial begin
    // Preponed region
    $display("%0t Preponed region sampled q=%0d", $time, intf.q);

    // Reactive region
    @(posedge intf.clk);
    $display("%0t Reactive after design q = %0d", $time, intf.q);

    // Re-inactive region
    #1;
    $display("%0t Re_inactive still same time q = %0d", $time, intf.q);

    // Postponed region
    $strobe("%0t Strobe (postponed) q= %0d", $time, intf.q);

    // Wait more cycles to see toggling
    repeat (3) begin
      @(posedge intf.clk);
      $display("%0t Reactive after design q = %0d", $time, intf.q);
    end
  end
endprogram

module d_ff(
  input  logic clk,
  input  logic rstn,
  output logic q
);
  // Toggle flop with async reset
  always @(posedge clk or negedge rstn) begin
    if (!rstn)
      q <= 0;
    else
      q <= ~q;
  end
endmodule
module top;
  logic clk = 0;
  logic rstn;
  logic q;          // DUT output
  d_ff_if intf(clk);

  // DUT instantiation
  d_ff d1(.clk(clk), .rstn(rstn), .q(q));

  // Connect DUT output into interface
  assign intf.q = q;

  // Program instantiation
  tb t1(intf);

  // Clock generation
  always #5 clk = ~clk;

  // Reset generation
  initial begin
    rstn = 0;
    #2 rstn = 1;   // release reset at 2ns
  end

  // End simulation
  initial #40 $finish;
endmodule

