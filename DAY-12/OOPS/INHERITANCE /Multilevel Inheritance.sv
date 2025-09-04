class grandparent;
  function void display();
    $display("grandparent present");
  endfunction
endclass

class parent extends grandparent;
  function void display();
    $display("parent present");
  endfunction
endclass

class child extends parent;
  function void display();
    super.display(); // Calls parent.display()
    $display("child present");
  endfunction
endclass

module tb;
  initial begin
    child c = new();
    c.display(); // This triggers parent and child display functions
  end
endmodule
