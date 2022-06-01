`timescale 1ns/1ns

module test ();
	logic aa=0 , ee=0;
	logic y0y0;
	logic y1y1;
	pbd UUT (aa,ee,y0y0,y1y1);
	initial begin
		#71 ee = 1;
		#71 aa = 1;
		#0 ee = 0;
		#71 ee = 1;
		#71 $stop;
	end
endmodule