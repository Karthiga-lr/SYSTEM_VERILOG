module packed_array_bitpart_examples;
logic[17:0] data;
initial begin
  data = 16'hA4F0;
  
  $display("Full data = %b", data);
  $display("bit  = %b", data[1]);
  $display("upper bits = %b", data[17:6]);
  $display("lower bits = %b", data[5:0]);
end
endmodule
