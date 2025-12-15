module q12115(CK,J,K,Q,Qbar);
input CK,J,K;
output Q,Qbar;
reg Q=1,Qbar=0;

always @(posedge CK) begin
    if ({J,K}==2'b11) {Q,Qbar}={~Q,~Qbar};
    else if ({J,K}==2'b10) {Q,Qbar}={1'b1, 1'b0};
    else if ({J,K}==2'b01) {Q,Qbar}={1'b0, 1'b1};
end

endmodule




