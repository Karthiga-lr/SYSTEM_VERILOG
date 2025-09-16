module test(fa intf);
  driver drv;
  initial begin
    drv = new(intf);
    drv.run();
    #10 $finish;
  end
endmodule
