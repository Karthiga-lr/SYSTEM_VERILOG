module array_tb;
  function automatic void single_arr(ref int arr[]);
    foreach(arr[i]) arr[i] = i+1;
  endfunction

  function automatic void double_arr(ref int arr[]);
    foreach(arr[i]) arr[i] = i*2;
  endfunction
  
  initial begin
    int nums[];         // dynamic array
    nums = new[5];      // allocate 5 elements
    single_arr(nums);
    $display("nums = %0p", nums);
    double_arr(nums);
    $display("nums = %0p", nums);
  end
endmodule
