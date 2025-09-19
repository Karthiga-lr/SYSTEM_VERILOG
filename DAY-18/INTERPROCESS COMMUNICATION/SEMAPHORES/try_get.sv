module sem_try_get;
  semaphore car_key = new(1);
  initial begin
    fork
      begin
        $display("%0t person A waiting for the car key",$time);
        car_key.get(1);
        $display("%0t person A got the key",$time);
        #10;
        car_key.put(1);
        $display("%0t person A returned the key",$time);
      end
      
      begin
        #5;
        $display("%0t person B waiting for the car key",$time);
        void'(car_key.try_get(1));
        $display("%0t person B got the car key",$time);
        
        car_key.put(1);
        $display("%0t person B returned the key",$time);
      end
    join
  end
endmodule
