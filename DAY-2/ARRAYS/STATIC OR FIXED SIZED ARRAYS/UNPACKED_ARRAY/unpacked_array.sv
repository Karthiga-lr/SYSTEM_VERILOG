module unpacked_array_example;
  int data[5];
  initial begin
    data[0]=10;
    data[1]=20;
    data[2]=30;
    data[3]=40;
    data[4]=50;
    $display("unpacked array elements");
    for(int i=0;i<5;i++)
      $display("data[%0d]=%0d",i,data[i]);
  end
endmodule
      
