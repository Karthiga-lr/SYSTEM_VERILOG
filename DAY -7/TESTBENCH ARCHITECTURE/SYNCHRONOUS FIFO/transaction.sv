class transaction #(parameter FIFO_DEPTH = 8, parameter DATA_WIDTH = 32);
  bit clk;
  bit rst_n;
  rand bit wr_n;
  rand bit rd_en;
  rand logic [DATA_WIDTH-1:0] data_in;
  logic [DATA_WIDTH-1:0] data_out;
  bit empty;
  bit full;
  
  function void display(string st)
    $display("%s", st);
    $display("clk = %d, rst_n = %d, wr_n = %d, rd_en = %d, data_in = %d, data_out = %d, empty = %d, full = %d", clk,rst_n,wr_en,rd_en,data_in,data_out,empty,full);
  endfunction
endclass
