`timescale 1ns/1ns

module pbd (input a,e, output y0,y1);

	supply0 gnd;
	supply1 vdd;
	
	// NOT e
	wire note;
	nmos #(3,4,5) T1 (note,gnd,e);
	pmos #(5,6,7) T2 (note,vdd,e);
	// NOT a
	wire nota;
	nmos #(3,4,5) T3 (nota,gnd,a);
	pmos #(5,6,7) T4 (nota,vdd,a);
	//y0
	nmos #(3,4,5) T5 (y0,gnd,note);
	nmos #(3,4,5) T6 (y0,gnd,a);
	wire x0;
	pmos #(5,6,7) T7 (x0,vdd,a);
	pmos #(5,6,7) T8 (y0,x0,note);
	//y1
	nmos #(3,4,5) T9 (y1,gnd,nota);
	nmos #(3,4,5) T10 (y1,gnd,note);
	wire x1;
	pmos #(5,6,7) T11 (x1,vdd,nota);
	pmos #(5,6,7) T12 (y1,x1,note);
endmodule