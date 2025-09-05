virtual class A;  // blueprint (it provides a  template)
 function display();
     int a = 5;
   $display("value of a = %0d",a);
  endfunction
endclass

class B extends A;
  function disp();
    int a = 15;
    $display("value of a = %0d",a);
  endfunction
endclass

module tb;
  B b1;
  initial begin
  b1 = new();
  b1.display();
  b1.disp();
  end
endmodule
