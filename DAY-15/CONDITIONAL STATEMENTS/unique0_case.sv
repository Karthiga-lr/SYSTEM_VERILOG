module decoder_3_8_eg;
  logic [2:0] in;
  logic [7:0] out;
  
  initial begin
    in = 3'b000;#1;
    in = 3'b001;#1;
    in = 3'b010;#1;
    in = 3'b011;#1;
  end
  
  always@(*)
    begin
      out = 8'b0;
      unique0 case (in)
        3'b000: out = 8'b00000001;
        3'b001: out = 8'b00000010;
        3'b010: out = 8'b00000100;
        3'b011: out = 8'b00001000;
        3'b100: out = 8'b00010000;
        3'b101: out = 8'b00100000;
        3'b110: out = 8'b01000000;
        3'b111: out = 8'b10000000;
      endcase
    end
  initial begin
    $monitor("time = %0t, in = %0b, out = %0b",$time,in,out);
  end
endmodule
