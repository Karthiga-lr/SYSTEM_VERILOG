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
