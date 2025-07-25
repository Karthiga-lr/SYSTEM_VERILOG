module str_comparison;
  
  string str_1,str_2;
  
  initial begin 
    str_1 = "LRK";
    str_2 = "LRKS";
    if(str_1 <= str_2)
      $display("print str_1 is less than str_2");
    else
      $display("print str_2 is greater tahn str_1");
  end
endmodule
    
