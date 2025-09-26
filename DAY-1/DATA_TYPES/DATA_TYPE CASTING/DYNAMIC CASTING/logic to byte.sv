module dynamic_logic_to_byte;
  logic [4:0] l_data;
  byte byte_d;
  initial begin
    l_data = 4'b1x0z;
    $display("Before casting of data = %0b",l_data);
    $cast(byte_d,l_data);
    $display("After casting the data = %0b", byte_d);
  end
endmodule
