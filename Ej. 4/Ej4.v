module BF3(input wire ENABLE, input wire [3:0]IN, output wire [3:0]OUT);
	assign OUT = ENABLE ? IN : 4'bz;
endmodule
