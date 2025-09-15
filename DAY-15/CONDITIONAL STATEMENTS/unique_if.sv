module unique_if;
  int a = 10;
  initial begin
    unique if (a == 10)
      $display("condition is true"); //Exactly one condition has to be true
    else if (a == 11)
      $display("Condition is false");
    else
      $display("Else condition");
  end
endmodule    
