module str_in_equality;
  
  string str_1,str_2;
  
  initial begin 
    str_1 = "LRK";
    str_2 = "LRKS";
    if(str_1 != str_2)
      $display("print str_1 and str_2 are not equal");
    else
      $display("print str_1 and str_2 are equal");
  end
endmodule
    
