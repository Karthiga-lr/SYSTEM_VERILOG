module assoc_array_prev;
  int value[int];
  int detect_prev; // this is the key
  initial 
    begin
      value[1] = 10;
      value[2] = 20;
      value[3] = 30;
      detect_prev = 2; //It is used to detect the previous value by inserting prev_next = 1
      value.prev(detect_prev);
      $display("detect the prev = %0d",detect_prev);
      $display("Detect the prev value = %0d",value[detect_prev]);
      
    end
endmodule
