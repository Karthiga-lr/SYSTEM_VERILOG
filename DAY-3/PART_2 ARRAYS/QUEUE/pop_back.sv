module pop_back;
  int q[$];
  int q1[$:5];
  
  initial begin
    q = {4,5,8,9};
    q1 = {8,4,3,9,5,0,1};
    $display("pop back q = %0p",q.pop_back());
    $display("pop back q1 = %0p",q1.pop_back());
  end
  endmodule
