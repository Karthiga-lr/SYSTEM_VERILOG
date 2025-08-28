class student;
  static int marks = 85;  // class property 
  extern task mark_result(int m); 
endclass
  
task student::mark_result(int m);
  marks = m;   // updates the class variable
endtask
  
module tb;
  initial begin
    $display("student marks = %0d", student::marks);
    //student::mark_result(95);
    //$display("Updated student marks = %0d",student::marks);
  end
endmodule
