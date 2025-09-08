class vehicle;
  virtual function void run();
    $display("Vehicle is approaching");
  endfunction
endclass
class car extends vehicle;
  function void run();
    $display("Car is running on the road");
  endfunction
endclass
class bike extends vehicle;
  function void run();
    $display("Bike is running on the track");
  endfunction
endclass

module tb;
  vehicle v[$];
  int i;
  initial begin
    car c;
    bike b;
    c = new();
    b = new();
    v.push_back(c);
    v.push_back(b);
  
    foreach (v[i]) begin
      v[i].run();
    end
  end
endmodule
