class cons;
  rand bit [3:0] value;
  constraint c1 { value < 5;}
endclass

module test;
  initial begin
    cons t1;
    t1 = new();
    for(int i=1; i<=10; i++)begin
      if(t1.randomize())begin
    $display("Iteration = %0d, Randomization of value = %0d",i,t1.value);
    $display("Normal randomization without inline constraint occured");
      end else
        $display("randomization without inline is failed");
    end
      for(int j =1; j<=10; j++)begin
       if(t1.randomize() with {value == 2;})begin
         $display("Iteration = %0d, Randomization of value = %0d",j, t1.value);
         $display("Ranomization with inline constraint occured");
        end else 
          $display("Randomization with inline is failed");
  end
  end
endmodule
