module Ej2();
  reg CLOCK, RESET, ENABLE; 
  wire QT; 
	FlipT Y4(CLOCK, RESET, ENABLE, QT);


initial begin
	CLOCK=0;
	forever #1 CLOCK = ~CLOCK;
end

  initial begin
	#5
	$display("Ej2");
    $display("CLOCK Enable Reset |  Q");
    $display("-----------------");
    $monitor("%b   %b %b | %b", CLOCK, ENABLE, RESET, QT);
       RESET = 1; ENABLE = 0;
    #1 RESET = 0; ENABLE = 1;

  end

	initial
    #15 $finish;
  initial begin
    $dumpfile("ej2_tb.vcd");
    $dumpvars(0, Ej2);
  end
endmodule