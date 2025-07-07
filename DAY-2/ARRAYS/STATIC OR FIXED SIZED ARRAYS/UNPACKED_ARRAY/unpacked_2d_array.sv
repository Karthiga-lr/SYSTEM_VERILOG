module unpacked_2d_array_example;
  int matrix[3][4];
  initial begin
    matrix[0][0] = 1; matrix[0][1] = 2; matrix[0][2] = 3; matrix[0][3] = 4;
    matrix[1][0] = 3; matrix[1][1] = 6; matrix[1][2] = 9; matrix[1][3] = 12;
    matrix[2][0] = 4; matrix[2][1] = 8; matrix[2][2] = 12; matrix[2][3] = 16;
  $display("2D Unpacked Array(matrix):");
    for(int i=0;i<4;i++)begin
      for(int j=0;j<=5;j++)begin
      $display("%0d",matrix[i][j]);
      end
    end
  end
endmodule
