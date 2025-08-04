class class_1;
  rand bit [1:0] a;
  constraint cons {a == 1;}
endclass
class class_2;
  rand bit [1:0] b;
  static constraint cons1 {b == 2;}
endclass
module top;
  initial begin
    class_1 ob1 = new();
    class_1 ob2 = new();
    class_2 ob3 = new();
    class_2 ob4 = new();
  
    ob1.cons.constraint_mode(0);
  for(int i =1; i<=4; i++) begin 
    ob1.randomize(); 
    ob2.randomize();  
    $display("Iteration: %0d,value in object_1: %0d  value in object_2: %0d",i, ob1.a, ob2.a);  
  end 
    
    ob3.cons1.constraint_mode(0);  

    for(int j = 1; j <= 8; j++) begin  
    ob3.randomize();  
    ob4.randomize();  
    $display("Iteration: %0d, value in object_3: %0d , value in object_4: %0d",j, ob3.b, ob4.b);  
  end  
end
endmodule

