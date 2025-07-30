class construct_data;
  rand bit [4:0] data1;
  rand bit [4:0] data2;
  constraint my_data1 {data1 dist {1:= 60,[5:8]:= 30, 10:=40};}
  constraint my_data2 {data2 dist {11:/ 80,[2:4]:/ 70, 9:/ 20};}
endclass

module tb;
  initial begin
    construct_data cons1_data;
    cons1_data = new();
    for (int i = 0; i < 20; i++) begin
      if(cons1_data.randomize())
        $display("Iteration : %0d , data1 : %0d, data2 : %0d", i, cons1_data.data1, cons1_data.data2);
      else
        $display("Randomization failed at iteration %0d", i);
    end
  end
endmodule
