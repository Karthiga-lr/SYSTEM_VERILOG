module unique0_if;
  int x = 5, y = 5;
  initial begin
    $display("values of x = %0d and y = %0d",x,y);
    unique0 if (x == y)
      $display("X equals Y");
    else if (x > 0&& y > 0)
      $display(" Both are true"); // warning in the output bc two conditions are true
    else if ( x < y)
      $display("x is lesser than y");
    $display("out of block");
  end
endmodule
