module continue_tb;
  int array[5] = {1,2,3,4,5};
  initial begin
    for (int i = 0; i<5; i++)begin
      if(i == 2)begin
        $display("Calling continue");
        continue;
      end
      $display("Iteration = %0d",i);
      end
  end
endmodule
