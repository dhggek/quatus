module q12000(A,B,C,D,g,e,l);
input A,B,C,D;
output g,e,l;

assign g=A&~C|B&~C&~D|A&B&~D;
assign e=~A&~B&~C&~D|~A&B&~C&D|A&B&C&D|A&~B&C&~D;
assign l=~A&C|~A&~B&D|~B&C&D;

endmodule