module Ej_1();

  reg CLOCK, RESET, D1, ENABLE; reg [1:0]D2; reg [3:0]D4; 
  wire Q1; wire [1:0]Q2; wire [3:0]Q4;

	FD1 U1(CLOCK, D1, RESET, ENABLE, Q1);
	FD2 U2(CLOCK, D2, RESET, ENABLE, Q2);
	FlipD4 U3(CLOCK, D4, RESET, ENABLE, Q4);

initial begin
	CLOCK=0;
	forever #5 CLOCK = ~CLOCK;
end
  initial begin
	#5
	$display("Ej1, FlipFlop D 1 b");
    $display("CLOCK E D | Q");
    $display("------------");
    $monitor("%b   %b %b | %b", CLOCK, ENABLE, D1, Q1);
       RESET = 1; D1 = 1; ENABLE = 0;
    #1 RESET = 0;
	#10 D1 = 1;
	#10 ENABLE = 1;
	#15 D1 = 0;
  end

  initial begin
	#60
	$display("Ej1, FlipFlop D 2 b");
    $display("CLOCK E  D | Q");
    $display("-------------");
    $monitor("%b   %b %b |%b", CLOCK, ENABLE, D2, Q2);
       RESET = 1; D2 = 1;
    #1 RESET = 0;
	#5 ENABLE = 1;
	#10 D2 = 2;
	#10 D2 = 3;
  end
 
  initial begin
	#100
    $display("\n");
	$display("Ej1, FlipFlop D 4 b");
    $display("CLOCK E  D   |  Q");
    $display("-----------------");
    $monitor("%b   %b %b | %b", CLOCK, ENABLE, D4, Q4);
       RESET = 1; D4 = 1;
    #1 RESET = 0;
	#5 ENABLE = 1;
	#10 D4 = 2;
	#10 D4 = 3;
	#10 D4 = 10;
  end


	initial
    #150 $finish;
  initial begin
    $dumpfile("Ej1_tb.vcd");
    $dumpvars(0, Ej_1);
  end
endmodule