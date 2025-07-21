module size;
  int q[$]; //unbounded
  string q1[$:4]; //bounded

  initial begin
    
    q = {5,3,8,9,2,6,0,1};
    q1 = {"X", "Y", "Z"};

    $display("q = %p", q.size());
    $display("q1 = %p", q1.size());
    
  end
endmodule
