module tb;
  initial begin
    $display("[%0t] parent class", $time);
    fork
      #5 $display("[%0t] child 1: Finished after 5 time units",$time);
      #15 $display("[%0t] child 1: Finished after 15 time units",$time);
      #8 $display("[%0t] child 1: Finished after 7 time units",$time);
    join
    $display("[0t] parents resumes until all children finishes",$time);
  end
endmodule
