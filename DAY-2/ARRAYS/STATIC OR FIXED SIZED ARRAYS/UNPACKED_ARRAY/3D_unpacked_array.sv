module threed_unpacked_array;
  int array[2][2][3]; // 2 block 2 row 3 column
  
  initial begin 
  array[0][0][0] = 1;
  array[0][0][1] = 4;
  array[0][0][2] = 6;
  
  array[0][1][0] = 2;
  array[0][1][1] = 8;
  array[0][1][2] = 10;
  
  array[1][0][0] = 4;
  array[1][0][1] = 12;
  array[1][0][2] = 16;
  
  array[1][1][0] = 3;
  array[1][1][1] = 16;
  array[1][1][2] = 20;
  
  $display("3D unpacked array:");
  for( int b=0;b<2;b++)begin
    $display("Block: %0d",b);
    for(int r=0;r<2;r++)begin
      for(int c=0;c<3;c++)begin
        $write("%0d ", array[b][r][c]);
      end
      $write("\n");
    end
    $write("\n");
  end
  end
endmodule
      
