class student;
  const int roll_no;
  string name;

function new(int r, string n);
  roll_no = r;
  name = n;
endfunction

function void display();
  $display("Roll no = %0d, Name = %0s",roll_no,name);
endfunction
endclass

module tb;
  initial begin
    student s1 = new(102,"LATHA");
    student s2 = new(105,"ANU");
    s1.display();
    s2.display();
    // s3.roll_no = 202; Error
  end
endmodule
