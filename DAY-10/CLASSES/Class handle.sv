class student;
  bit result; 
  int marks;
  task progress_report;
    result = 1;
    $display("Progress report(result) of student : %0d pass",result);
  endtask
endclass
module tb;
  initial begin
  student s1;
  if(s1==null)
    $display("The student is absent for exam");
    else 
     $display("The student is present for exam"); 
    // s1.progress_report(); //only called if the object exists
   end  
endmodule
