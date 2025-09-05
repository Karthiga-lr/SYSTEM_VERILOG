class student;
  string name;
  protected int marks; //protected
  
  function new(string n, int m);
    name = n;
    marks = m;
  endfunction
  
  function void show();
    $display("%s scored marks", name);
  endfunction
endclass


class result extends student;
  function new(string n, int m);
    super.new(n,m);
  endfunction

  function void show_result();
    if (marks >= 50)
      $display("%0s has passed with %0d marks", name, marks);
    else
      $display("%0s has failed with %0d marks", name, marks);
  endfunction
endclass

module tb;
  initial begin
    result r1;
    result r2;
    r1 = new("karthi",75);
    r1.show();
    r1.show_result();

    
    r2 = new("Anu",35);
    r2.show();
    r2.show_result();
  end
endmodule
