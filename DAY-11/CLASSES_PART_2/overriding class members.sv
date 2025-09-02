class vehicle;
  int wheels = 4;
  function void display();
    $display("Vehicle has %0d wheels",wheels);
  endfunction
endclass

class Bike extends vehicle;
  int wheels = 2;
  function void display();
    $display("Bike has %0d wheels", wheels);
  endfunction
endclass

module tb;
  initial begin
    vehicle v = new();
    Bike b = new(); 
    v.display();
    b.display();
    
    b.wheels = 3;
    v.display();
    b.display();
  end
endmodule
