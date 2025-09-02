class counter;
  static int object_count = 5;
  
  static function void increment();
    object_count++;
  endfunction
  
  static function void show_count();
    $display("Total object created = %0d",object_count);
  endfunction
endclass

module tb;
  initial begin
    counter::increment();
    counter::increment();
    counter::show_count();
    
  end
endmodule
