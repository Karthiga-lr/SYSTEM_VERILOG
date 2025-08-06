module type_enum;
  typedef enum {MON,TUE,WED,THU,FRI,SAT,SUN} days;
  days day;
  
  initial begin
    day = day.first();
    $display("First day name = %0s and it is value = %0d",day.name,day);
    day = day.last();
    $display("Last day name = %0s and it is value = %0d",day.name,day);
    day = WED;
    day = day.next();
    $display("Next day name = %0s and it is value = %0d",day.name,day);
    day = WED;
    day = day.prev();
    $display("Prev day name = %0s and it is value = %0d",day.name,day);
    day = day.num();
    $display("Numbers of days = %0d",day); 
  end
endmodule  
