module sort_num;
  int num[$];  
             
  initial begin
    num = {4,2,2,8,6};
    num.sort();
    $display("Reverse numbers: %p", num);
  end 
endmodule
