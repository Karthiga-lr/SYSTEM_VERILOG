module bounded_type;
  int queue[$:4]; //bounded
  initial begin
    queue = '{4,5,6,7,8};
    //$display("queue = '[4,5,6,7,8]");
    $display("queue = %p",queue);
  end
