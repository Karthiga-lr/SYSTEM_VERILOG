module unpacked_union;
  union{
  bit result;
  byte grade;
  int marks;
  } student_details;
  
  initial begin
    student_details.result = 1;
    student_details.grade = 4;
    student_details.marks = 95;
    
    $display("Student details = %0p", student_details);  
   
  end
endmodule
