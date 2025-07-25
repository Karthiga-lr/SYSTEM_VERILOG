module combining_char;
   string s1,s2;
  initial begin
    s1 = "ARTT";
    s2 = "DESIGN";
    
    s1.putc(3,"S");
    $display("string s1:%0s", s1);
    s2.putc(5,s1.getc(3));
    $display("string s2:%0s",s2);
            
  end   
endmodule
  
