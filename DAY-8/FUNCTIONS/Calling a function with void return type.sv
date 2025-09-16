module void_d;
  initial begin
    $display("Hello World");
    display("This is my function call");
  end
  
  function void display(string str);
    $display("%s",str);
  endfunction
endmodule
