module one_hot_fsm (input logic clk, input logic rst, output logic [2:0] state);
  always_ff@(posedge clk or posedge rst)begin
    if(rst)
      state <= 3'b001;
  else begin
    case (state)
      3'b001 : state <= 3'b010;
      3'b010 : state <= 3'b100;
      3'b100 : state <= 3'b001;
      default: state <=3'b001;
    endcase
  end
  end
endmodule
