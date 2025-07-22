module assoc_array_last;
  int value[int];
  int detect_last;
  initial 
    begin
      value[1] = 10;
      value[2] = 20;
      value[3] = 30;
      value.last(detect_last);
      $display("detect the last = %0d",detect_last);
      $display("Detect the last value = %0d",value[detect_last]);
      
    end
endmodule
