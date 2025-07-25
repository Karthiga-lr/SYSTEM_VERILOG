module str_putchar;
  string s1, s2, s3;

  initial begin
    s1 = "SAM";
    s2 = "LRKS";
    s3 = "KAR";
    s1.putc(2, "S");
    $display("put character in str1: %0s", s1);
    s2.putc(3, "C");
    $display("put character in str2: %0s", s2);
    s3.putc(0, "A");       
    $display("put character in str3: %0s", s3);
  end
endmodule

