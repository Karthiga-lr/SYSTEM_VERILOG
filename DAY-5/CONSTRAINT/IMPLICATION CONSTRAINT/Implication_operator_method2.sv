class student_grade;
  rand bit [3:0] cls_grade1;
  rand bit [3:0] cls_grade2;
  constraint range { (cls_grade1 inside {[1:10]}) && (cls_grade1 < 5) -> (cls_grade2 ==2);}  
  
endclass

module top;
  initial begin
    student_grade sys;
    sys = new ();
    
    for(int i = 0; i<=20; i++)
      if(sys.randomize())
        $display(" Iteration = %0d, cls_grade1 = %0d cls_grade2 = %0d", i, sys.cls_grade1, sys.cls_grade2);
    else
      $display("Randomization is failed");
  end
endmodule
