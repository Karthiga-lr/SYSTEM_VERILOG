module enum_datatype;
  enum{JAN,FEB,MAR,APR,MAY}month;
  initial begin
    month = APR;
    $display("one of the month = %0d",month);
  end
endmodule
