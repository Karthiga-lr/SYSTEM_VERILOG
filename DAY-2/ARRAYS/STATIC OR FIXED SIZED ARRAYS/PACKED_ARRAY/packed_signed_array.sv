module packed_signed_array;
  logic signed [7:0] a,b,result;
  
  initial begin
    a = -5;
    b = 15;
    result = a + b;
    
    $display("a=%0d, b=%0d, result=%0d",a,b,result);
  end
endmodule
