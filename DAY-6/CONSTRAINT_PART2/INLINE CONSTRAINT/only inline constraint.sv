class gen;
  rand bit [3:0] value;
endclass

module test;
  initial begin
    gen v1;
    v1 = new();
    for(int i =1; i<= 10;i++)
      if(v1.randomize()with {value == 2;})
        $display("Iteration = %0d , value = %0d", i,v1.value);
    else 
      $display("Inline randomization is failed");
  end
endmodule
