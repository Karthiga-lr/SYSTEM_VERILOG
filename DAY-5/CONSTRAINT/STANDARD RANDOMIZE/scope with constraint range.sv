module scope_rand;
  logic [2:0] a;
  
  initial begin
    repeat(5)begin
    std::randomize(a)with {a inside {[1:6]};};
    $display("Random numbers a is %0d", a);
  end
  end
endmodule
    
