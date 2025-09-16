module full_adder(
  input logic in_a,
  input logic in_b,
  input logic in_cin,
  output logic sum,
  output logic carry
);
  assign sum = in_a ^in_b^in_cin;
  assign carry = (in_a & in_b) | (in_b & in_cin) | (in_cin & in_a);
endmodule
