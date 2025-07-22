module dynamic_array_size;
  int arr[];
  initial begin
    arr = new[5];
    
    foreach(arr[i])
      arr[i] = i*5;
    
    $display("Array size = %0d",arr.size());
    
    for(int i = 0; i < arr.size(); i++);
    $display("arr[%0d] = %0d", i, arr[i]);
  end
endmodule
