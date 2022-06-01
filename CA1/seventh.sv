
`timescale 1ns/1ns

module pbd (input a,e,output y0,y1);
	assign {y0,y1} = {(~a) & e , a & e};
endmodule

module please (input x,y,z,output n7,n6,n5,n4,n3,n2,n1,n0);
	wire pbd1y0;
	wire pbd1y1;
	wire pbd2y0;
	wire pbd2y1;
	wire pbd3y0;
	wire pbd3y1;

	pbd p1 (x,1,pbd1y0,pbd1y1);
	pbd p2 (y,pbd1y0,pbd2y0,pbd2y1);
	pbd p3 (y,pbd1y1,pbd3y0,pbd3y1);
	pbd p4 (z,pbd2y0,n7,n6);
	pbd p5 (z,pbd2y1,n5,n4);
	pbd p6 (z,pbd3y0,n3,n2);
	pbd p7 (z,pbd3y1,n1,n0);
endmodule