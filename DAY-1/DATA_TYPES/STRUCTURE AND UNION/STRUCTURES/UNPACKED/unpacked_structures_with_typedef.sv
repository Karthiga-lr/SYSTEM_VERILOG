module unpacked_struct_with_typedef;
  typedef struct{string name;
                 bit [31:0] mark;
                 byte roll_no;
                }struct_details;
  struct_details std_dt;
  initial begin
    std_dt = '{"KARTHI",50,125};
    $display("Struct_details = %0p",std_dt);
  end
endmodule
