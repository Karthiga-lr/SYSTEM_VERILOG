module packed_typedef;
  typedef struct{
    bit [15:0] id;
    logic [15:0]contact_num;
    integer reference_num;
  } person_details;
  person_details per_dt;
  initial begin
    per_dt ='{101,25255,2554};
    $display("Person details = %0p",per_dt);
  end
endmodule
