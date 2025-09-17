module active_regions;
  int a = 10, b= 15;
  
  initial begin
    // Active region starts here
    a <= b;
    b <= a;
    $display("a = %0d, b = %0d",a,b); //prints old values
    //inactive egion
    #1;   // NBA region happens here 
    //NBA region
    $display("a = %0d, b = %0d",a,b); // Back to active region 
  end
endmodule
