interface fa();
  logic in_a,in_b,in_cin;
  logic sum,carry;
endinterface

class driver;
  virtual fa vif;
  
  function new(virtual fa vif);
    this.vif = vif;
  endfunction
  
  task run();
    repeat(10)begin
      vif.in_a = $urandom % 2;
      vif.in_b = $urandom % 2;
      vif.in_cin = $urandom % 2;
      
      #1;
      $display("a = %0b b = %0b c = %0b sum = %0b carry = %0b",vif.in_a,vif.in_b,vif.in_cin,vif.sum,vif.carry);
    end
  endtask
endclass
      
module test(fa intf);
  driver drv;
  initial begin
    drv = new(intf);
    drv.run();
    #10 $finish;
  end
endmodule

module top;
  
  fa intf();
  full_adder dut(.in_a(intf.in_a),.in_b(intf.in_b),.in_cin(intf.in_cin),.sum(intf.sum),.carry(intf.carry));
    test t1(intf);
endmodule
