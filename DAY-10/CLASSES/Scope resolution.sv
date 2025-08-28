class student_mem;
  static string name = "Anu";
  static function int marks(int x);
    return x;
    endfunction
endclass

module tb;
  initial begin
    $display("Student name = %0s",student_mem::name);
    $display("Student marks = %0d", student_mem::marks(95));
  end
endmodule
