module full_adder_8 (Sum, Cout, X, Y, Cin);
input [7:0] X, Y;
input Cin;
output [7:0] Sum;
output Cout;
wire [7:0] carry;
    full_adder F_A_0 (X[0], Y[0], Cin, carry[0], Sum[0]);
    full_adder F_A_1 (X[1], Y[1], carry[0], carry[1], Sum[1]);
    full_adder F_A_2 (X[2], Y[2], carry[1], carry[2], Sum[2]);
    full_adder F_A_3 (X[3], Y[3], carry[2], carry[3], Sum[3]);
    full_adder F_A_4 (X[4], Y[4], carry[3], carry[4], Sum[4]);
    full_adder F_A_5 (X[5], Y[5], carry[4], carry[5], Sum[5]);
    full_adder F_A_6 (X[6], Y[6], carry[5], carry[6], Sum[6]);
    full_adder F_A_7 (X[7], Y[7], carry[6], Cout, Sum[7]);
endmodule