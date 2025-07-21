module pop_front;
  int q[$];    //unbounded
  int q1[$:4];  //bounded
  
  initial begin
    q = {4,3,7,8,6,1,0};
    q1 = {3,4,5,6,9};
    
    q.pop_front();
    $display("q = %p",q);
    q1.pop_front();
    $display("q1 = %p",q1);
    
  end
endmodule
