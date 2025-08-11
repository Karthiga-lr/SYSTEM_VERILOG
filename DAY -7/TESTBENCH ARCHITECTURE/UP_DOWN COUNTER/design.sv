module up_down_counter(
  input logic clk,
  input logic rst,
  input logic d,
  output reg [3:0] count);
  always@(posedge clk or posedge rst)begin
    if(rst)
      count <= 4'b0;
  else if(d)
    count <= count+1;
  else
    count <= count-1;
  end
endmodule
