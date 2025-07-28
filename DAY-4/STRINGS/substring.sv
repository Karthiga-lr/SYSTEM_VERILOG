module sub_string;
  string s1,s2,s3;
  
  initial begin
    s1 = "LRKARTHIGA";
    s2 = "LRSAMR";
    s3 = {s1 , s2};
    
    $display("substring s1  =%s",s1.substr(2,7));
    $display("substring s2  =%s",s2.substr(2,4));
    $display("substring s1  =%s",s3.substr(2,11));
  end
endmodule
