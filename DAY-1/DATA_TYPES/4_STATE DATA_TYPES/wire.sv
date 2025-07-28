module and_gate_example;
  wire a, b, y;

  assign a = 1'b1;
  assign b = 1'b0;
  assign y = a & b; //continuous assignment 

  initial begin
    #10; // important to add delay to get signal updates and show values 
    $display("AND Gate: %b & %b = %b", a, b, y);
  end
endmodule
