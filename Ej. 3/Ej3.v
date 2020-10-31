module FD1(input wire CLOCK, input wire FD, input wire RESET, input wire ENABLE, output Q);
reg Q;
	always @(posedge CLOCK or	posedge RESET or posedge ENABLE)
		if (RESET)begin
		Q <= 0;
	end else if(ENABLE) begin
		Q <= FD;
	end
endmodule

module FlipJK(input wire CLOCK, RESET, ENABLE, J, K, output wire Q);
	FD1 O5(CLOCK, ~K&Q | J&~Q, RESET, ENABLE, Q);
endmodule
