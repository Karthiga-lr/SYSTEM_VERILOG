class student;
  string name;
  int marks;
  
  function new(string name, int marks);
    this.name = name; //update class property(this.name)
    this.marks = marks; // this.marks - class property
  endfunction
endclass
  
module tb;
    initial begin
    student s1;
    s1 = new("sam",95);
    $display("Student name = %0s, Student marks = %0d",s1.name,s1.marks);
    end
endmodule 
