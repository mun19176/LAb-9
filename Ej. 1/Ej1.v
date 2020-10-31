module FD1(input wire CLOCK, input wire D, input wire RESET, input wire ENABLE, output Q);
reg Q;
	always @(posedge CLOCK or	posedge RESET)
		if (RESET)begin
		Q <= 0;
	end else if(ENABLE) begin
		Q <= D;
	end
endmodule


module FD2 (input wire CLOCK, input wire [1:0]D, input wire RESET, input wire ENABLE, output wire [1:0]Q);
	FD1 O0(CLOCK, D[0], RESET, ENABLE, Q[0]);
	FD1 O1(CLOCK, D[1], RESET, ENABLE, Q[1]);
endmodule


//Modulo FlipFlopD de 4 bitsx
module FlipD4 (input wire CLOCK, input wire [3:0]D, input wire RESET, input wire ENABLE, output wire [3:0]Q);
	FD2 O3(CLOCK, D[1:0], RESET, ENABLE, Q[1:0]);
	FD2 O4(CLOCK, D[3:2], RESET, ENABLE, Q[3:2]);
endmodule

