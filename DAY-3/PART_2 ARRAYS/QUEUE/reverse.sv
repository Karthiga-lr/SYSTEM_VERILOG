module reverse;
  int q[$]; //unbounded
  string q1[$:6]; //bounded

  initial begin
    
    q = {5,3,8,9,2,6,0,1};
    q1 = {"D", "A", "E", "B", "C"};
    q.reverse();
    $display("q = %p", q);
    q1.reverse();
    $display("q1 = %p", q1);
    
  end
endmodule
