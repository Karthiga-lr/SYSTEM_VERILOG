module lower_case;
   string s1,s2;
  initial begin
    s1 = "ART";
    s2 = "DESIGN";
    
    $display("string s1:%0s", s1.tolower());
    $display("string s2:%0s", s2.tolower());
            
  end   
endmodule
