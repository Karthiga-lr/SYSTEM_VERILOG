class student;
  string name;
  int marks;
  
  function new(string n, int m);
    name = n;
    marks = m;
  endfunction
  
  function void display();
    $display("Student name = %0s, Student marks = %0d",name,marks);
  endfunction
endclass

module tb;
  initial begin
    student s1,s2;
    s1 = new("ANU",95);
    
    s2= new s1;
    $display("Before changes");
    s1.display();
    s2.display();
    
    s2.name = "LATHA";
    s2.marks = 98;
    $display("After changes");
    s1.display();
    s2.display();
  end
endmodule
