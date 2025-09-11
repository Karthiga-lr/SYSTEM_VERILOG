module automatic_task; 
  task automatic compute_square(input int num,output int sq);
    sq = num *num;
    #10;
    endtask
    
  int sq1,sq2,sq3;
  initial begin
    fork 
      compute_square(3,sq1);
      compute_square(4,sq2);
      compute_square(5,sq3);
    join
    $display("Squares: %0d %0d %0d", sq1,sq2,sq3);
  end
endmodule
