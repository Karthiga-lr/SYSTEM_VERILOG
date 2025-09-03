/class worker;
  virtual task do_work();
    $display("@%0t ns: Generic worker starts work", $time);
    #5;
    $display("@%0t ns: Generic worker finished work", $time);
  endtask
endclass

class Engineer extends worker;
  task do_work();
    $display("@%0t ns: Engineer starts coding", $time);
    #10;
    $display("@%0t ns: Engineer finished coding", $time);
  endtask
endclass

class manager extends worker;
  task do_work();
    $display("@%0t ns: Manager starts planning", $time);
    #5;
    $display("@%0t ns: Manager finishes planning", $time);
  endtask
endclass

module tb;
  initial begin
    worker w;
    Engineer e = new();
    manager m = new();
    
    w = e;
    w.do_work();
    
    w = m;
    w.do_work();
  end
endmodule
