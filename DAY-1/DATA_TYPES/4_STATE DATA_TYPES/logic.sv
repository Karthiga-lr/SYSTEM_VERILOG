module logic_state;
  logic a,b,c;
  initial begin
    a = 1'b0;
    b = 1'bz;
    c = 1'bx;
    
    $display("a =%b, b =%b, c =%b",a,b,c);
  end
endmodule
