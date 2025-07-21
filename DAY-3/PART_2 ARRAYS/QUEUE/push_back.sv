module push_back;
  int q[$];    //unbounded
  int q1[$:4];  //bounded
  
  initial begin
    q = {4,3,7,8,6,1,0};
    q1 = {3,4,5,6};
    
    q.push_back(1);
    $display("q = %p",q);
    q1.push_back(7);
    $display("q1 = %p",q1);
    
  end
endmodule
