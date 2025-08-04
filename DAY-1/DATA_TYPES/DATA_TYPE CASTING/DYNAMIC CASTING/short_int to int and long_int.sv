module short_int_to_int_to_longint;
  shortint short_int_d;
  int int_d;
  longint long_int_d;
  initial begin
    short_int_d = 8'b1011_x1zx;
    $display("size of short_int_data = %0d", $size(short_int_d));
    $display("converting before size of short_int_data = %0d",short_int_d);
             short_int_d = ($cast(int_d,short_int_d));
    $display("After casting shortint to int_d = %0d",int_d);
             short_int_d = ($cast(long_int_d,int_d));
    $display("After casting shortint to long int data = %0d", int_d);
  end
endmodule
