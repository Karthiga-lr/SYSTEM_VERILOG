module shuffle_num;
  int num[$];  
             
  initial begin
    num = {4,2,1,8,6};
    num.shuffle();
    $display("Shuffle numbers: %p", num);
  end 
endmodule
