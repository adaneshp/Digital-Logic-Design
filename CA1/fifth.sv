`timescale 1ns/1ns

module pbd (input a,e, output y0,y1);

	//assign #(15) y0 = (~a) & e;
	//assign #(12) y1 = a & e;
	assign #(13.5) {y0,y1} = {(~a) & e , a & e};
endmodule
