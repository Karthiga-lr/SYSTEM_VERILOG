module struct_without_typedef;
struct {
  string name;
  bit [31:0] mark;
  byte roll_no;
}student_details;
  initial begin
    student_details.name = "KARTHI";
    student_details.mark = 99;
    student_details.roll_no = 6127;
    $display("Student details = %0p",student_details);
  end
endmodule
