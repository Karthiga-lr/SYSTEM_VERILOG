module dyn_array_new_example;
  int arr[];
  
  initial begin
    arr = new[5];
    arr[0] = 15;
    arr[1] = 25;
    arr[2] = 35;
    arr[3] = 45;
    arr[4] = 55;
    
    $display("arr[0] = %0d, arr[1] = %0d, arr[2] = %0d, arr[3] = %0d, arr[4] = %0d", arr[0],arr[1],arr[2],arr[3],arr[4]);
  end
endmodule
