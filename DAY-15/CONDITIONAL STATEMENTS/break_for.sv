module break_for;
  int array[5] = {1,2,3,4,5};
  initial begin
    for (int i = 0; i<5; i++)begin
      if(i == 2)begin
        $display("Iteration = %0d",i);
        break;
      end
      $display("Iteration = %0d",i);
      end
  end
endmodule
