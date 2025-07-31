class student_grade;
  rand bit [4:0] cls_grade;
  constraint range { cls_grade > 5; cls_grade < 12;  cls_grade < 10;}
endclass

module top;
  initial begin
    student_grade sys;
    sys = new ();
    
    for(int i = 0; i<=20; i++)
      if(sys.randomize())
        $display(" Iteration = %0d, Student_grade = %0d", i, sys.cls_grade);
    else
      $display("Randomization is failed");
  end
endmodule
