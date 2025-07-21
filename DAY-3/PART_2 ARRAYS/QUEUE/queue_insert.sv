module insert;
  int q[$];    //unbounded
  int q1[$:4];  //bounded
  
  initial begin
    q = {4,3,7,8,6,1,0};
    q1 = {3,4,5,7};
    
    q.insert(4,9);
    $display("q = %p",q);
    q1.insert(3,6);
    $display("q1 = %p",q1);
    
  end
endmodule
