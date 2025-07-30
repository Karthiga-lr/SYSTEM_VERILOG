class construct_data;
  rand bit [3:0] data;
  constraint my_data {data dist {1:= 60,[4:8]:= 30, 10:= 40};}
endclass

module tb;
  initial begin
    construct_data cons1_data;
    cons1_data = new();
    for (int i = 0; i < 10; i++) begin
      if(cons1_data.randomize())
        $display("Iteration : %0d, data : %0d", i, cons1_data.data);
      else
        $display("Randomization failed at iteration %0d", i);
    end
  end
endmodule

