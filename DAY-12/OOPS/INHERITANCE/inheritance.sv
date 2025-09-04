class teacher;
  function void subject();
    $display("student chooses subject");
  endfunction 
endclass

class student extends teacher;
  function void section();
    $display("Teacher seperates section");
  endfunction
endclass

module tb;
  initial begin
    student s = new();
    s.subject();
    s.section();
  end
endmodule
