module  Q1110(I,O);
    input[7:0]I;
    output[2:0]O;
    
    assign O[2] = I[7]|I[6]|I[5]|I[4];
    assign O[1] = I[7]|I[6]|I[3]|I[2];
    assign O[0] = I[7]|I[5]|I[3]|I[1];

endmodule