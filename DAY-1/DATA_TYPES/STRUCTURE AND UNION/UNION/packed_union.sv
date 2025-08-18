module packed_union;
  union packed{
    bit [1:0]result;
    reg [1:0]grade;
  logic [1:0]pass;
  } student_details;
  
  initial begin
    student_details.result = 1;
    student_details.grade = 4;
    student_details.pass = 6;// 6 = b'0110 -->it is truncates to 2 bit b'10 
    
    $display("Student details result = %0d", student_details.result);
    $display("Student details grade = %0d", student_details.grade);
    $display("Student details pass = %0d", student_details.pass);  
  end
endmodule
