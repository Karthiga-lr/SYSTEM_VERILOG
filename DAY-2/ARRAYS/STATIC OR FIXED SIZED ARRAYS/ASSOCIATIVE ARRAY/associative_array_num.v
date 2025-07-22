module assoc_array_num;
  int value[int];
  int count;
  initial begin
    value [1] = 10;
    value [2] = 20;
    value [3] = 30;
    count = value.num();
    $display("The numbers is: %0d",count);
    foreach(value[i])
      $display("Number of values : %0d", i, value[i]);
  end
endmodule
