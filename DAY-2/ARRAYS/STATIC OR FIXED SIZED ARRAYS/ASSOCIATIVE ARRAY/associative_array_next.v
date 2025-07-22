module assoc_array_next;
  int value[int];
  int detect_next; // this is the key
  initial 
    begin
      value[1] = 10;
      value[2] = 20;
      value[3] = 30;
      detect_next = 1; //It is used to detect the 2nd value by inserting detect_next = 1
      value.next(detect_next);
      $display("detect the next = %0d",detect_next);
      $display("Detect the next value = %0d",value[detect_next]);
      
    end
endmodule
