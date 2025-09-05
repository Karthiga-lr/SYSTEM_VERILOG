class counter;
  local int count;
  function void increment();
    count++;
  endfunction
  function void display();
    $display("Count = %0d",count);
  endfunction
endclass
module tb;
  initial begin
    counter c;
    c = new();
    c.increment();
    c.increment();
    c.display();
    end
endmodule
