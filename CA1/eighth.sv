`timescale 1ns/1ns

module test ();
	logic xx=0;
	logic yy=0;
	logic zz=0;
	logic nn7;
	logic nn6;
	logic nn5;
	logic nn4;
	logic nn3;
	logic nn2;
	logic nn1;
	please UUT (xx,yy,zz,nn7,nn6,nn5,nn4,nn3,nn2,nn1,nn0);
	initial begin
		#71 zz=1;
		#71 zz=0;
		#0 yy=1;
		#71 zz=1;
		#71 xx=1;
		#0 yy=0;
		#0 zz=0;
		#71 zz=1;
		#71 yy=1;
		#0 zz=0;
		#71 zz=1;
		#71 $stop;
	end
endmodule
 