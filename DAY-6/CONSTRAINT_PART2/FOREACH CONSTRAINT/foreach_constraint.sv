class student_grade;
  rand bit [3:0] cls_grade1[2];
  rand bit [3:0] cls_grade_pass[4];
  constraint range { foreach (cls_grade1[i]) 
    cls_grade1[i] == i;
                    foreach (cls_grade_pass[i])
                      cls_grade_pass[i] == i;
                   }
endclass

module top;
  initial begin
    student_grade sys;
    sys = new ();
    
    for(int i = 0; i<=20; i++)
      if(sys.randomize())
        $display(" Iteration = %0p, cls_grade1 = %0p cls_grade_pass = %0p", i, sys.cls_grade1, sys.cls_grade_pass);
    else
      $display("Randomization is failed");
  end
endmodule
