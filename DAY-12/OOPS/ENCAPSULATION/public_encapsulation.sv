class Student;
  string name;
  int marks;
  function new(string n, int m);
    name = n;
    marks = m;
  endfunction
  function void show();
    $display("Student: %0s, Marks: %0d", name, marks);
  endfunction
endclass

module tb;
  Student s1, s2;
  initial begin
    s1 = new("Alice", 85);
    s2 = new("Bob", 90);
    s1.show();  
    s2.show();
    s2.marks = 95; 
    $display("Updated Bob's marks = %0d", s2.marks);
  end
endmodule
