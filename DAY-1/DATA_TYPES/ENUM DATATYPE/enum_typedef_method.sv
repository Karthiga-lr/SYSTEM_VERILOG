module type_enum;
  typedef enum {JAN,FEB,MAR,APR,MAY,JUN,JUL} month;
  month mon;
  
  initial begin
    mon = mon.first();
    $display("First mon name = %0s and it is value = %0d",mon.name,mon);
    mon = mon.last();
    $display("Last mon name = %0s and it is value = %0d",mon.name,mon);
    mon = MAR;
    mon = mon.next();
    $display("Next mon name = %0s and it is value = %0d",mon.name,mon);
    mon = MAR;
    mon = mon.prev();
    $display("Prev mon name = %0s and it is value = %0d",mon.name,mon);
  end
endmodule    
