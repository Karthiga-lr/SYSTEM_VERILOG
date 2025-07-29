module random_bit;
  logic [3:0] a;
  
  initial begin
    a = $urandom();
    $display(" Random number of a: %d",a);
  end
endmodule
    
