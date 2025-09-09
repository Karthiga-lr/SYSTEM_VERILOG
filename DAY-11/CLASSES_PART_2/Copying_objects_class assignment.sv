class student;
  string name;
  int roll_no;
  
  function new(string n, int r);
    name = n;
    roll_no = r;
  endfunction
  
  function void display();
    $display("Name = %0d, roll_no = %0d", name,roll_no);
  endfunction
endclass

module student;
  initial begin
  student s1, s2;
  s1 = new("SAM",120);
  s2 = s1;
  $display("Before changes");
  s1.display();
  s2.display();
  
  s2.name = "ANU";
  s2.roll_no = 130;
 
  $display("After changes");
  s1.display();
    s2.display();  // same memory // changes in one reflects the other
  end
endmodule
