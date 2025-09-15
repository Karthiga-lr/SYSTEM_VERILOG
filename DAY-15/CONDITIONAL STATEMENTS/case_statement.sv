module case_stat;
  int sel = 3;
  initial begin
    case(sel)
      1:$display("case: sel = 1");
      2:$display("case: sel = 2");
    endcase
  end
endmodule 
