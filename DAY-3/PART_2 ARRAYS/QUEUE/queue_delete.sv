module delete;
  int q[$];
  string q1[$:4];

  initial begin
    
    q = {5,3,8,9,2,6,0,1};
    q1 = {"X", "Y", "Z"};
    
    q.delete(4);
    $display("q = %p", q);
    
    q1.delete(1);
    $display("q1 = %p", q1);
    
  end
endmodule
