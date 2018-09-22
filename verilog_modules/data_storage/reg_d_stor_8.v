module reg_d_en_stor_8 (Z, X, CLK, EN, RST);
input [7:0] X;
input CLK;
input EN;
output [7:0] Z;
REG [7:0] D;
    ff_d_sr FFD0 (Z[0], X[0], Cin, carry[0], Sum[0]);
    ff_d_sr FFD1 (X[1], Y[1], carry[0], carry[1], Sum[1]);
    ff_d_sr FFD2 (X[2], Y[2], carry[1], carry[2], Sum[2]);
    ff_d_sr FFD3 (X[3], Y[3], carry[2], carry[3], Sum[3]);
    ff_d_sr FFD4 (X[4], Y[4], carry[3], carry[4], Sum[4]);
    ff_d_sr FFD5 (X[5], Y[5], carry[4], carry[5], Sum[5]);
    ff_d_sr FFD6 (X[6], Y[6], carry[5], carry[6], Sum[6]);
    ff_d_sr FFD7 (X[7], Y[7], carry[6], Cout, Sum[7]);
endmodule