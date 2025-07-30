module scope_rand;
  logic [3:0] a,b,c;
  initial begin
    std::randomize(a,b,c) with {(a<5);(b>14);(c==5);};
    $display("Random variable a b c is %0d  %0d  %0d",a,b,c);
  end  
endmodule 
