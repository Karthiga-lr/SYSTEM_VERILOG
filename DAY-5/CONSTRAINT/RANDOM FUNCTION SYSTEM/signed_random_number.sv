module signed_random_bit;
  integer a;
  
  initial begin
    a = $random();
    $display(" Random number of a: %d",a);
  end
endmodule
