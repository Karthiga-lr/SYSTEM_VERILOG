class bankaccount;
  int balance = 0;
  
  function bankaccount deposit(int amount); // return type (bankaccount-class name) 
    this.balance += amount;
    return this; // return current object 
  endfunction
  
  function bankaccount withdraw(int amount);
    this.balance -= amount;
    return this; // return current object 
  endfunction
endclass
module tb;
    initial begin
    bankaccount acc;
    acc = new();
    acc.deposit(1000).withdraw(200); //method chaining
    $display("Total balance = %0d",acc.balance);
    end
endmodule
