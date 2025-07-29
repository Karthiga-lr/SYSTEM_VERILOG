class constraint_block;
  rand logic [3:0] a;
  extern constraint b1;
endclass

constraint constraint_block::b1{ a inside{[2:6]};}; // constraint class name:: constraint_name{condition;}

module tb_block;
  initial begin
   constraint_block call = new();
    if(call.randomize())
    $display("Random value of a: %0d",call.a);
    else
    $display("Randomization failed");
  end
endmodule
