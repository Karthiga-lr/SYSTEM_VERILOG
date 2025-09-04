virtual class Animal;
  string name;

  function new(string n);
    name = n;
  endfunction

  function void display();
    $display("%s makes a sound", name);
  endfunction
endclass

class Dog extends Animal;
  function new(string n);
    super.new(n);
  endfunction

  function void display();
    $display("%s barks: Woof!", name);
  endfunction
endclass

class Cat extends Animal;
  function new(string n);
    super.new(n);
  endfunction   // No override
endclass

module tb1;
  initial begin
    Animal a;   // abstract handle
    Dog d = new("Tommy");
    Cat c = new("Kitty");

    a = d; 
    a.display();  // calls Dog’s version
    a = c; 
    a.display();  // calls parent’s version (since Cat didn’t override)
  end
endmodule
