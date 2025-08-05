module dynamic_bit_to_byte;
  bit [3:0] bit_d;
  byte byte_d;
  initial begin
    bit_d = 4'b10zx;
    $display("Before casting the data = %0b", bit_d);
    $cast(byte_d,bit_d);
    $display("After casting the data = %b",byte_d);
  end
endmodule
