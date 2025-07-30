module scope_rand;
  logic [3:0] a;
  initial begin
    std:randomize(a) with {(a<5);};
    $display("Random variable a %0d",a);
  end  
endmodule 
