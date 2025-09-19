module try_get_multiple_keys;
  semaphore sem = new(3);
  initial begin
    if (sem.try_get(2))
      $display("%0t Trying to getting 2 keys",$time);
     else
        $display("%0t It is failed to get 2 keys",$time);
   
  
    if(sem.try_get(2))
      $display("%0t Again trying to getting 2 keys",$time);
     else
      $display("%0t It is failed  again to get 2 keys",$time);
  end
endmodule
