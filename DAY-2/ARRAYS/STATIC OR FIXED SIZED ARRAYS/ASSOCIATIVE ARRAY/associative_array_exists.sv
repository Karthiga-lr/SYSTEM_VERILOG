module assoc_value_exists;
  int value[int];

  initial begin
    value[1] = 40;
    value[2] = 80;
    
    if (value.exists(1)) begin
      $display("The value of number is %0d", value[1]);
    end else begin
      $display("The value does not exist");
    end

    if (value.exists(0)) begin
      $display("The value of number is %0d", value[0]);
    end else begin
      $display("The value does not exist");
    end
  end
endmodule
