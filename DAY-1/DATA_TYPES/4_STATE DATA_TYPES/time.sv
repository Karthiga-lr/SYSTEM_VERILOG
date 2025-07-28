module time_example;
  time t1, t2;

  initial begin
    #15;
    t1 = $time; 
    #10;
    t2 = $time; // capture time is 25
    $display("Time difference = %0t", t2 - t1); //25-15
  end
endmodule
