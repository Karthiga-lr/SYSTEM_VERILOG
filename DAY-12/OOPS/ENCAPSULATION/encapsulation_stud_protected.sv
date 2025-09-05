class account;
  string name;
  protected int balance; //protected
  
  function new(string n, int b);
    name = n;
    balance = b;
  endfunction
  
  function void show();
    $display("Account holder = %0s, balance = %0d", name,balance);
  endfunction
endclass

class savingaccount extends account;
   function new(string n, int b);
    super.new(n, b); // call parent constructor
  endfunction
  function void deposit(int amt);
    balance += amt;
    $display("%0s deposited %0d, balance = %0d",name,amt,balance);
  endfunction
endclass

module tb;
  initial begin
    savingaccount s;
    s = new("ANU",1200);
    s.show();
    s.deposit(500);
  end
endmodule
