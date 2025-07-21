module unbounded_type;
  int queue[$]; //unbounded
  initial begin
    queue = '{4,5,6,7,8};
    //$display("queue = '[4,5,6,7,8]");
    $display("queue = %p",queue);
  end
endmodule
