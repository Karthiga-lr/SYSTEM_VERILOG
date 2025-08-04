module static_short_int_to_int_to_longint;
  shortint short_int_d;
  int int_d;
  longint long_int_d;
  initial begin
    short_int_d = 8'b1011_x1zx;
    $display("size of short_int_data = %0b", $size(short_int_d));
    $display("converting before size of short_int_data = %0b",short_int_d);
             int_d = int'(short_int_d);
    $display("After casting shortint to int_d = %0b",int_d);
             long_int_d = longint'(short_int_d);
    $display("After casting shortint to long int data = %0b", long_int_d);
  end
endmodule
             
