class student;
  string name;
  int roll_no;
  
  function new(string n="AB", int r=5);
    name = n;
    roll_no = r;
  endfunction
  
  function void display();
    $display("Name = %0d, roll_no = %0d", name,roll_no);
  endfunction
  
  function void deep(student s);
    this.name = s.name;
    this.roll_no = s.roll_no;
  endfunction
endclass

module tb;
  initial begin
  student s1,s2;
  s1 = new("ANU",125);
  s2 = new();
  s2.deep(s1);
  $display("Before changes");
  s1.display();
  s2.display();
  
  s1.name = "RADHA";
  s1.roll_no = 150;
  $display("After changes");
  s1.display();
  s2.display();
  end
endmodule
