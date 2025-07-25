module str_getchar;
  string s1, s2, s3;

  initial begin
    s1 = "SAM";
    s2 = "LRKS";
    s3 = "KAR";
    
    $display("get character in str1: %0s", s1.getc(2));
    $display("put character in str2: %0s", s2.getc(3));  
    $display("put character in str3: %0s", s1.getc(1));
  end
endmodule
