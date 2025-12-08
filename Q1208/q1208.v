module q1208(D,la,Q);
input D,la;
output Q;
reg Q;

always @(*) begin
    if (la) Q = D;
    else Q = Q;
end
endmodule