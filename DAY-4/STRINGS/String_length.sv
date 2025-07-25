module str_length;
  string str_1,str_2,str_3;
  
  initial begin 
    str_1 = "LRK";
    str_2 = "LRKS";
    str_3 = "154";
    $display("%0d",str_2.len());
      end
endmodule
