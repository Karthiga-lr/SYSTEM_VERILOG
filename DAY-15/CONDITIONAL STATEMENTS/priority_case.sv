module priority_case;
  int sel = 2;
  initial begin
    priority case(sel)
      2: $display("sel = 2 first"); //priort picks the first match
      2: $display("sel = 2 second");
    endcase
  end
endmodule
