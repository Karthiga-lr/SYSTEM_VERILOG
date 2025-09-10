module self_example;
  process p1;
  initial begin
    fork 
      begin
        p1 = process::self();
        $display("[%0t] Inside process p1 handle created",$time); //ative region
        #10;
        $display("[%0t] Still running process p1",$time);
      end
    join_none //doesn't wait, continue main thread
    #5; $display("[%0t] status of p1:%0s", $time,p1.status());

    #20; $display("[%0t] Final status of p1:%0s",$time,p1.status());
  end
endmodule
