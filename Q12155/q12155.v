module q12155(CK,D,Q,Qbar);
input CK,D;
output Q,Qbar;
reg Q=0,Qbar=1;

always @(negedge CK) begin
    if (D==0) {Q,Qbar}={1'b1,1'b0};
    else {Q,Qbar}={1'b0,1'b1};
end

endmodule



