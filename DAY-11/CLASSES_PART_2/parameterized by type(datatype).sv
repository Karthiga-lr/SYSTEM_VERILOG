class box #(parameter type T = int);
  T item;
  function new(T value);
    item = value;
  endfunction
  
  function void display();
    $display("Box contains = %p",item);
  endfunction
endclass
module tb;
    initial begin
      box#(int) b1;
      box#(string) b2;
      box#(bit[7:0]) b3;
      
      b1 = new(85);
      b2 = new("SAM");
      b3 = new(8'hAC);
    
    b1.display();
    b2.display();
    b3.display();
    end
endmodule
