module test;
  typedef int array_lst[10];   //typedef 
  array_lst hd1;               //handle (storage for return)
  
  function array_lst fillarray(int arr[10]);
    foreach (arr[i])
      arr[i] = (i+1)*10;
    return arr;
  endfunction
  
  initial begin
    $display("Function by an array from display");
    $display("Returned array = %0p", fillarray(hd1));
  end
endmodule
