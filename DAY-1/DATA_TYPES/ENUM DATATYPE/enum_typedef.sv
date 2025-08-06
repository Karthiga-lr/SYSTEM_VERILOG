module type_def_enum;
  typedef enum{JAN,FEB,MAR,APR,MAY,JUN,JUL,AUG,SEP}month;
  month mon1,mon2,mon3,mon4,mon5;
  initial begin
    mon1 = JAN;
    mon2 = FEB;
    mon3 = MAR;
    mon4 = APR;
    mon5 = MAY;
    $display("mon1 = %0d mon2 = %0d mon3 = %0d mon4 = %0d mon5 = %0d",mon1,mon2,mon3,mon4,mon5);
  end
endmodule
