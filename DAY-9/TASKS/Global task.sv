task add(input int a,b, output int res);
  res = a+b;
endtask

module m1;
  int r;
  initial begin
    add(5,5,r);
    $display("Add: 5+5 = %0d",r);
  end
endmodule

module m2;
  int r;
  initial begin
    #5ns;
    add(10,20,r);
    $display("Add: 10+20 = %0d",r);
  end
endmodule
