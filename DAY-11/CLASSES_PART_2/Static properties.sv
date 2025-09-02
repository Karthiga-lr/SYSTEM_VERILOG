class counter;
  static int object_count = 0;
  
  function new();
    object_count++;
  endfunction
  
  function void show_count();
    $display("Total object created = %0d",object_count);
  endfunction
endclass

module tb;
  initial begin
    counter c1 = new();  //all object shares the same memory location for static variable
    counter c2 = new();
    counter c3 = new();
    c1.show_count();
    c2.show_count();
    c3.show_count();
  end
endmodule
