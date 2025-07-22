module assoc_array_first;
  int arr[string];  
  string key;   //key is important for associative_array first to get the value
 
  initial begin
    arr["apple"] = 10;
    arr["banana"] = 20;
    arr["cherry"] = 30;
    
    if(arr.first(key))begin
      $display("First key in the associative array = %s", key);
      $display("Value of array is = %0d",arr[key]);
      end else begin
      $display("Array is empty"); 
      end
  end
endmodule
