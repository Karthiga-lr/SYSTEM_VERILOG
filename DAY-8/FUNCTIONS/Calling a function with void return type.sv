module void_d;
  initial begin
    $display("Hello World");
  end
  
  function void display(string str);
    $display("%s",str);
  endfunction
endmodule

//another program
