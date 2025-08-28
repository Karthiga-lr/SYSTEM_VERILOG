class student;
  int marks;
  extern function void evaluate(int score);
endclass
function void student::evaluate(int score);
  $display("....Evaluation started....");
    if (score >= 90) begin
    marks = score;
    $display("Excellent Score = %0d", marks);
    $display("Grade: A+");
    $display("Keep up the outstanding work!");
  end
  else if (score >= 75) begin
    marks = score;
    $display("Good Job Score = %0d", marks);
    $display("Grade: A");
    $display("You can push a little more for excellence.");
  end
  else if (score >= 50) begin
    marks = score;
    $display("Average Performance. Score = %0d", marks);
    $display("Grade: B");
    $display("Need more practice and consistency.");
  end
  else begin
    marks = score;
    $display("Poor performance. Score = %0d", marks);
    $display("Grade: F");
    $display("Work harder and dont give up!");
  end
  $display("---- Evaluation Finished ----");
endfunction
module tb;
  initial begin
     student s1 = new();
       s1.evaluate(95);
       s1.evaluate(75);
       s1.evaluate(30);
  end
 endmodule
