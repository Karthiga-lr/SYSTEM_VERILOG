/*module await_example;
  process p1,p2;
 
  initial begin
    fork
      begin
        p1 = process::self();
        #5;
        $display("[%0t] process 1 finished",$time);
      end
      
      begin
        p2 = process::self();
        $display("[%0t] p2 waiting for p1",$time);
        p2.await(p1);
        $display("p2 resumes after p1 is finished",$time,);
      end
    join
  end
endmodule*/  error
