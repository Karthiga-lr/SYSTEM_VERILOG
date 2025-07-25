module str_concatenation;
  
  string str_1,str_2,str_3;
  
  initial begin 
    str_1 = "LRK";
    str_2 = "LRKS";
    str_3 = "154";
    
    $display({str_1,str_2,str_3});
  end
endmodule
