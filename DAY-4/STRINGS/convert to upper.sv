module upper_case;
   string s1,s2;
  initial begin
    s1 = "art";
    s2 = "craft";
    
    $display("string s1:%0s", s1.toupper());
    $display("string s2:%0s", s2.toupper());
            
  end   
endmodule
