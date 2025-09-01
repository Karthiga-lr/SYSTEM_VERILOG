class vector #(parameter WIDTH = 8); //  width is the parameter(bit-width,array-sizes)
  
  //parameter by value allows the same class to be reused for different width or sizes 
  bit[WIDTH-1:0] data;
  
  function new(bit[WIDTH-1:0] d);
    data = d;
  endfunction
  
  function void display();
    $display("Data = %0b", data);
  endfunction
endclass

module tb;
  initial begin
    vector#(4) v1 = new(4'b1011);
    vector#(16) v2 = new(16'hAEFB);
    v1.display();
    v2.display();
  end
endmodule
