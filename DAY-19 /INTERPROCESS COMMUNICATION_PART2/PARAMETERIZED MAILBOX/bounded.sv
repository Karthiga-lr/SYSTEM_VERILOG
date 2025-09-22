class A;
  string student_name;
  string subject;
  
  mailbox #(string) m; 
  function new(mailbox #(string)m1);
    this.m = m1;
  endfunction
  
  task data();
  student_name = "Latha";
  subject = "Social";
  m.put(student_name);
  m.put(subject);
  $display("Student name = %0s, subject =%0s",student_name,subject);
  student_name = "Karthi";
  subject = "Maths";
  m.put(student_name);
  m.put(subject);
  $display("Student name = %0s, subject =%0s",student_name,subject);
  student_name = "Anu";
  subject = "Science";
  m.put(student_name);
  m.put(subject);  
  $display("Student name = %0s, subject =%0s",student_name,subject);
  endtask
  
endclass

class B;
  string student_name;
  string subject;
  
  mailbox #(string) m; 
  function new(mailbox #(string)m2);
    this.m = m2;
  endfunction
  task data();
 
  m.get(student_name);
  m.get(subject);
  $display("Student name = %0s, subject =%0s",student_name,subject);
 
  m.get(student_name);
  m.get(subject);
  $display("Student name = %0s, subject =%0s",student_name,subject);
 
  m.get(student_name);
  m.get(subject);
  $display("Student name = %0s, subject =%0s",student_name,subject);
  endtask
  
endclass

module tb;
  A a1;
  B b1;
  mailbox #(string) mb = new(6);
  initial begin  
  a1 = new(mb);
  b1 = new(mb);
  a1.data();
  b1.data();
  end
  
endmodule
