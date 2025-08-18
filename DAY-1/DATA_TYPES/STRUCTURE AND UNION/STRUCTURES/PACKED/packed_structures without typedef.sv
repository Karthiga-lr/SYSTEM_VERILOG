module packed_without_typedef;
  struct packed{
    bit [15:0] id;
    logic [15:0]contact_num;
    integer reference_num;
  } person_details;
  initial begin
    person_details.id = 101;
    person_details.contact_num = 25255;
    person_details.reference_num = 2554;
    $display("Person details = %0p",person_details);

    $display("Person details = %0d",person_details.id);
    $display("Person details = %0d",person_details.contact_num);
    $display("Person details = %0d",person_details.reference_num);
  end
endmodule
