class student;
  string name = "sam";
  function void display();
  $display("Name = %0s",name);
  endfunction
endclass

class student_members extends student;
  string name = "Anu"; //overrides parent property
  function void display();
    super.display();   //calls sam
    $display("Name = %0s",name);
  endfunction
endclass

module tb;
  initial begin
    student_members s1;
    s1 = new();
    s1.display();
  end
endmodule 
