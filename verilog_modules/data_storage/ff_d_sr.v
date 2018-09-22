module ff_d_sr (Q, D, CLK, RST);
input D, CLK, RST;
output Q;
reg Q;
always @ (posedge clk)
begin
    if (~RST)
    Q <= D;
    else
    Q <= 0'b0;
end
endmodule