module Ej3();

  reg CLOCK, RESET, enable, K, J; 
  wire QJK; 
	FlipJK U4(CLOCK, RESET, enable, J, K, QJK);

initial begin
	CLOCK=0;
	forever #5 CLOCK = ~CLOCK;
end

  initial begin
	#5
	$display("Ej3");
    $display("CLOCK J K |  Q");
    $display("-----------------");
    $monitor("%b   %b %b | %b", CLOCK, J, K, QJK);
       RESET = 1; enable = 0; J = 0; K = 0;
    #1 RESET = 0; enable = 1;
	#10 J = 1;
	#15 J = 0; K = 1;
	#15 J = 1;

  end

	initial
    #70 $finish;
  initial begin
    $dumpfile("Ej_tb.vcd");
    $dumpvars(0, Ej3);
  end
endmodule