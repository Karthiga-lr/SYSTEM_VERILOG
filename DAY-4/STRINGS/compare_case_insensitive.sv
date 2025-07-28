module string_comp_case_insensitive;
  string s1,s2;
  int result;
  initial begin
    s1 = "CRAFT";
    s2 = "craft";
    
    result = s1.icompare(s2);
    
    $display("comparing s1 (%s) and s2 (%s): %0d",s1,s2,result);
    
    if(result == 0)
      $display("s1 and s2 are equal");
    else if(result < 0)
      $display("s1 is less than s2");
    else
      $display("s1 is greater than s2");
            
  end   
endmodule
