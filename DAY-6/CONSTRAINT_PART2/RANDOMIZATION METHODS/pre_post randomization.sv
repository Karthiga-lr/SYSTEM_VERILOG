class example;
  rand bit [4:0] data;
  randc bit enable;
  bit tmp_enable;
  function void pre_randomize();
    if(tmp_enable == 1)
      data.rand_mode(0);
    else
      data.rand_mode(1);
  endfunction
  function void post_randomize();
    tmp_enable = enable;
    $display("post_randomization: data = %0d, enable = %0d",data,enable);
  endfunction
endclass

module test_random;
  initial begin
    example t1;
    t1 = new ();
    repeat(5)
      t1.randomize();
  end
endmodule
    
