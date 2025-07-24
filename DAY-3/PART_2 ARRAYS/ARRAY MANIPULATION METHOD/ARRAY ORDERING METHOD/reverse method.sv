module reverse_num;
  int num[$];  
  int result[$];
             
  initial begin
    num = {4,2,2,6,8};
    num.reverse();
    $display("Reverse numbers: %p", num);
  end 
endmodule
