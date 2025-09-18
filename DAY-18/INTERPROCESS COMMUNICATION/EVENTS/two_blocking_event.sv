module block;
  event e;
  
  initial begin
    #5-> e;
    $display("%0t Blocking trigger done",$time);
  end
  
  initial begin
    #10-> e;
    $display("%0t Blocking trigger done",$time);
  end
  
  initial begin
    @(e.triggered)
    $display("%0t Event seen with @",$time);
    @(e.triggered)
    $display("%0t Event seen again with @",$time);
  end
endmodule
