module tb;
  class student;
  static bit result; // static is used here to call the class without creating object
  static int marks;
  static task progress_report;
    result = 1;
    $display("Progress report(result) of student : %0d pass",result);
  endtask
  endclass
  initial begin
   student:: progress_report();
  end
endmodule
