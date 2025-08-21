module reference;
  int a = 10, b= 20;
  
  function void swap_without_ref(int x, int y);
    int temp;
    temp = x;
    x = y;
    y = temp;
  endfunction
  
  function automatic void swap_with_ref(ref int x, y);
    int temp;
    temp = x;
    x = y;
    y = temp;
  endfunction
  
  initial begin
    $display("Before swap(without ref) of a = %0d ,b = %0d", a,b);
    swap_without_ref(a,b);
    $display("Afer swap(without ref) of a = %0d, b = %0d",a,b);
    $display("Before swap(with ref) of a = %0d ,b = %0d", a,b);
    swap_with_ref(a,b);
    $display("Afer swap(with ref) of a = %0d, b = %0d",a,b);
  end
endmodule
