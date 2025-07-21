module assoc_array_size;
  int arr[string];  

  initial begin
    arr["apple"] = 10;
    arr["banana"] = 20;
    arr["cherry"] = 30;

    $display("Associative array size = %0d", arr.size());
  end
endmodule
