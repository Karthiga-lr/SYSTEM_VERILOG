class memory #(parameter type T, parameter DEPTH = 4);
  T mem[DEPTH]; // Array of type T with size DEPTH

  // Write data into memory
  function void write(int idx, T val);
    if (idx < DEPTH)
      mem[idx] = val;
    else
      $display("Write Error: Index %0d out of range!", idx);
  endfunction

  // Read data from memory
  function T read(int idx);
    if (idx < DEPTH)
      return mem[idx];
    else begin
      $display("Read Error: Index %0d out of range!", idx);
      return '0; // safe default for any type
    end
  endfunction

  // Display memory content
  function void display();
    $display("\n--- Memory Content ---");
    $display("DEPTH=%0d, TYPE=%s", DEPTH, $typename(T));
    foreach (mem[i])
      $display(" mem[%0d] = %p", i, mem[i]);
  endfunction
endclass
module tb;
  initial begin
    // Declare first
    memory#(int, 4) m1;
    memory#(string, 3) m2;
    memory#(bit[7:0], 5) m3;

    m1 = new();
    m2 = new();
    m3 = new();
 
    m1.write(0, 10);
    m1.write(1, 20);
    m1.write(2, 30);
    m1.write(3, 40);
    m1.display();

    m2.write(0, "Hello");
    m2.write(1, "SystemVerilog");
    m2.write(2, "World");
    m2.display();

    m3.write(0, 8'hAB);
    m3.write(1, 8'hCD);
    m3.write(2, 8'hEF);
    m3.write(3, 8'h12);
    m3.write(4, 8'h34);
    m3.display();
  end
endmodule
