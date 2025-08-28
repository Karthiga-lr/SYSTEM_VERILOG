class student;
  int marks = 85;  // class property 
  extern function void display; 
endclass
function void student::display();
  $display("student marks = %0d",marks);
endfunction
  
module tb;
  initial begin
    student s1 = new();
    s1.display();
  end
endmodule
