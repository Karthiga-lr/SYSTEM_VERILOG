module unique_case_ex;
  int sel = 2;
  initial begin
    unique case (sel)
      1:$display("sel = 1");
      2:$display("sel = 2");
      3:$display("sel = 3");
      2,3: $display("sel=2 or 3");  //multiple matches causes run time error
    endcase
  end
endmodule
