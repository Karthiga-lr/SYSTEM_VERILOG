module priority_if;
  int error = 1, warning = 1;
  initial begin
    priority if (error)
      $display("Error detected");
    else if (warning)
      $display("Warning is detected");
    else 
      $display("All good");
  end
endmodule
