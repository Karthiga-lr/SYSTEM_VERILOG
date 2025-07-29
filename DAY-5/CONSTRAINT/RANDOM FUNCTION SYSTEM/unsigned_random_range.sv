module signed_random_bit;
  integer a;
  initial begin
    a = $urandom_range(2,5);
    $display(" Random number of a: %0d",a);
  end
endmodule
