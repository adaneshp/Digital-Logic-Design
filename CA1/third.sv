
`timescale 1ns/1ns

module pbd (input a,e, output y0,y1);
	wire note;
	not #(4.5) G1 (note,e);
	nor #(8) G2 (y0,a,note);
	wire nota;
	not #(4.5) G3 (nota,a);
	nor #(8) G4 (y1,note,nota);
endmodule