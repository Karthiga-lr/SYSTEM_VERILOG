module packed_array;
  logic [7:0] byte_data;
  
  initial begin
    byte_data = 8'b10101100;
  
    $display("Full byte:%b", byte_data);
    $display("MSB bit:%b", byte_data[7]);
    $display("LSB byte:%b", byte_data[0]);
    $display("[6:3] bit:%b", byte_data[6:3]);
  end
endmodule
    
