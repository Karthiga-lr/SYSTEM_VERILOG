class student_grade;
  rand bit [3:0] cls_grade1;
  rand bit [3:0] cls_grade_pass;
  constraint range { if (cls_grade1 inside {[1:6]}) 
    cls_grade_pass == 1;
    else
    cls_grade_pass == 0;
                   }
endclass

module top;
  initial begin
    student_grade sys;
    sys = new ();
    
    for(int i = 0; i<=20; i++)
      if(sys.randomize())
        $display(" Iteration = %0d, cls_grade1 = %0d cls_grade_pass = %0d", i, sys.cls_grade1, sys.cls_grade_pass);
    else
      $display("Randomization is failed");
  end
endmodule
