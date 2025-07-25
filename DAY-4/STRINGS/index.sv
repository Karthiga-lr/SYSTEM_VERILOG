module str_index;
  string str_1,str_2,str_3;
  
  initial begin 
    str_1 = "LRK";
    str_2 = "LRKS";
    str_3 = "154";
    
    for(int i = 0; i<=3; i++)
      $display("%s %s",str_2[i],str_3[i]);
      end
endmodule
