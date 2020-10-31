
module FD1(input wire CLOCK, input wire FFD, input wire RESET, input wire ENABLE, output Q);
reg Q;
	always @(posedge CLOCK or	posedge RESET)
		if (RESET)begin
		Q <= 0;
	end else if(ENABLE) begin
		Q <= FFD;
	end
endmodule


module FlipT(input wire CLOCK, RESET, ENABLE, output wire Q);
	FD1 O5(CLOCK, ~Q, RESET, ENABLE, Q);
endmodule
