module scope_rand;
  int a;
  initial begin
    std:randomize(a);
    $display("Random variable a %0d",a);
  end  
endmodule
