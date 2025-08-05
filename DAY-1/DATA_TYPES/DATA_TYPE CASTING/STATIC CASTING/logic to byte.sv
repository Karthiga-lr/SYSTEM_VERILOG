module static_logic_to_byte;
  logic [4:0] l_data;
  byte byte_d;
  initial begin
    l_data = 4'b1x0z;
    $display("Before casting of data = %0b",l_data);
    byte_d = byte'(l_data);
    $display("After casting the data = %b", byte_d);
  end
endmodule
