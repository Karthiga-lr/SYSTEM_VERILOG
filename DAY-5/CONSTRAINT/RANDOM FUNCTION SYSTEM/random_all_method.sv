module random_function;
  integer a;
  logic [3:0] b;
  bit [2:0] c;
  byte d;
  
  initial begin
    a = $random();
    b = $urandom_range(2,5);
    c = $random(4);
    d = $urandom(25);
    
    $display("Random value of a is: %d", a);
    $display("Random value of b is: %d", b);
    $display("$random(seed)");
    $display("Random value of c is: %d", c);
    $display("$urandom(seed)");
    $display("Random value of d is: %d", d);
  end
endmodule
    
