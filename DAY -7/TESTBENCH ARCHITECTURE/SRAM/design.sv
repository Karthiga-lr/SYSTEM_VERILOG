module SRAM #(parameter addr = 3,parameter data = 4)
  (input clk,
  input rst,
  input wr,
   input [addr -1:0] addrs,  //3-1:0 -> 2:0
   input [data -1:0] din,   //4-1:0-> 3:0
   output reg [data-1:0] dout);  //4-1:0-> 3:0
  
  reg [data -1:0] mem [ 0:(1<< addr)-1];   //mem [0: (1 << 3)-1]  //"1" 3 times left shift we get 1000 i.e(8)
  
  always@(posedge clk)begin
    if(rst)begin
      dout <=0;
      for(int i=0; i < (1<<addr); i++)begin
        mem[i] <=0;
      end
    end
    else if (wr)
      mem[addrs] <=din;    //write
    else
      dout <= mem[addrs];   //read
  end
endmodule 
        
