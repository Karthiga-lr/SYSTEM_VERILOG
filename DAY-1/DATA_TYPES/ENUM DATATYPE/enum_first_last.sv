module default_value_enum;
  enum{JAN,FEB,MAR,APR,MAY,JUNE,JULY,AUG,SEP}month;

initial begin
  
  $display("JAN,\n FEB,\n MAR,\n APR,\n MAY,\n JUN,\n JULY");
  
  month = month.first;
  $display("Month first = %0d",month);   
  for(int i=0;i<7;i++) begin
    $display("Month name =%0d  and its default value is = %0d",month.name,month);
    month = month.next;
  end
  $display("Month next = %0d",month.name);
 end
 endmodule
