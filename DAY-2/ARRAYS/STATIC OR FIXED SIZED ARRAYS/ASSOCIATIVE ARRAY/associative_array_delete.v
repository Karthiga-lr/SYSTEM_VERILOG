module assoc_array_delete;
  int arr[];
  
  initial begin
    arr = '{10,20,30};
    
    $display("Before delete,size = %0d", arr.size());
    $display("arr = %p", arr);
    
    arr.delete();
    
    $display("After delete, size = %0d",arr.size());
  end
endmodule
