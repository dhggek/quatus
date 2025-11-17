module Q1117(A,B,C,a,b,c,d,e,f,g);
input A,B,C;

output a,b,c,d,e,f,g;

assign a=~A|B&C;
assign b=~B|B&~C|A&B;
assign c=C|A&~B|A&B;
assign d=~A;
assign e=~A&~B|~A&~C;
assign f=~A&C;
assign g=~A&~C|~A&B;

endmodule
