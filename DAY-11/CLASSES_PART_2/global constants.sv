class vehicle;
  const int wheels = 4;
  string model;

function new(string m);
  model = m;
endfunction

function void display();
  $display("model = %0s, wheels = %0d",model,wheels);
endfunction
endclass

module tb;
  initial begin
    vehicle m1 = new("Tesla");
    vehicle m2 = new("KIA");
    m1.display();
    m2.display();
  end
endmodule
