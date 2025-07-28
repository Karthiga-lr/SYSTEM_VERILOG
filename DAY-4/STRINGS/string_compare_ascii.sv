module string_comp;
  string s1,s2;
  int result;
  initial begin
    s1 = "art";
    s2 = "craft";
    
    result = s1.compare(s2);
    
    $display("comparing s1 (%s) and s2 (%s): %0d",s1,s2,result);
    
    if(result == 0)
      $display("s1 and s2 are equal");
    else if(result < 0)
      $display("s1 is less than s2");
    else
      $display("s1 is greater than s2");
            
  end   
endmodule
