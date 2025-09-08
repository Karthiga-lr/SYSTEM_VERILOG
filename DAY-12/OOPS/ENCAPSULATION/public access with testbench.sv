class account;
  string holder;
  int balance;
  
  function new(string h, int b);
    holder = h;
    balance = b;
  endfunction
endclass

module tb;
  initial begin
    account a1;
    a1 = new("Anu",3000);
    $display("Holder = %0s, Balance = %0d",a1.holder,a1.balance);
    a1.balance -= 500;
    $display("updated balance account = %0d",a1.balance);
  end
endmodule
