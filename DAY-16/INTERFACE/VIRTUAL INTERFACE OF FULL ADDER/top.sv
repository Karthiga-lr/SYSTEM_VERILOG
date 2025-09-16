module top;
  
  fa intf();
  full_adder dut(.in_a(intf.in_a),.in_b(intf.in_b),.in_cin(intf.in_cin),.sum(intf.sum),.carry(intf.carry));
    test t1(intf);
endmodule

