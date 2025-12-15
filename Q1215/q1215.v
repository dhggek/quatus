module q1215(CK,R,S,PR,CLR,Q,Qbar);
input CK,R,S,PR,CLR;
output [1:0] Q,Qbar;
reg [1:0] Q,Qbar;

always @(posedge CK) begin
    if (CLR) {Q[1],Qbar[1]}=2'b01;
    else if (PR) {Q[1],Qbar[1]}=2'b10;
    else if ({S,R}==2'b10) {Q[1],Qbar[1]}=2'b10;
    else if ({S,R}==2'b01) {Q[1],Qbar[1]}=2'b01;
end

always @(negedge CK) begin
    if (CLR) {Q[0],Qbar[0]}=2'b01;
    else if (PR) {Q[0],Qbar[0]}=2'b10;
    else if ({S,R}==2'b10) {Q[0],Qbar[0]}=2'b10;
    else if ({S,R}==2'b01) {Q[0],Qbar[0]}=2'b01;
end

endmodule



