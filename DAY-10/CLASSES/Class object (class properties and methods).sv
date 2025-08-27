class student;  
  bit result;  
  int marks;  
  string name;
  
  task progress_report();  
    if (marks >= 40) begin
      result = 1;
      $display("Student = %0s -> Marks = %0d -> PASS", name, marks);
    end else begin
      result = 0;
      $display("Student = %0s -> Marks = %0d -> FAIL", name, marks);
    end
  endtask  
endclass

module check_student;  
  initial begin 
    student s1,s2;// create handle  
    s1 = new();// create object  
    s1.name  = "Arjun"; // access properties
    s1.marks = 55; // access properties

    s1.progress_report(); // access method

    $display("");  
    
    s2 = new(); // create object 
    s2.name  = "Vikram";  // access properties
    s2.marks = 30;  // access properties
    
    s2.progress_report();  // access method
  end 
endmodule
