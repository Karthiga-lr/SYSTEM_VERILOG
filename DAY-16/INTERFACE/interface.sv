interface fa_if;
  logic a,b,cin;
  logic sum,carry;
endinterface

module full_adder(input a, input b,input cin, output sum, output carry);
  assign {carry,sum} = a + b + cin;
endmodule

module tb(fa_if inf);
  initial begin
    $display("Full adder circuit");
   
    inf.a = 0; inf.b = 0; inf.cin = 0;#5;
    $display("a = %0b, b = %0b, cin = %0b, sum = %0b, carry = %0b",inf.a,inf.b,inf.cin,inf.sum,inf.carry);
    inf.a = 0; inf.b = 0; inf.cin = 1;#5;
    $display("a = %0b, b = %0b, cin = %0b, sum = %0b, carry = %0b",inf.a,inf.b,inf.cin,inf.sum,inf.carry);
    inf.a = 0; inf.b = 1; inf.cin = 0;#5;
    $display("a = %0b, b = %0b, cin = %0b, sum = %0b, carry = %0b",inf.a,inf.b,inf.cin,inf.sum,inf.carry);
    inf.a = 0; inf.b = 1; inf.cin = 1;#5;
    $display("a = %0b, b = %0b, cin = %0b, sum = %0b, carry = %0b",inf.a,inf.b,inf.cin,inf.sum,inf.carry);
  end
endmodule

module top();
  fa_if inf();
  full_adder dut(.a(inf.a),.b(inf.b),.cin(inf.cin),.sum(inf.sum),.carry(inf.carry));
  tb test(inf);
endmodule
