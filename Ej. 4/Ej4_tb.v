module Ej4();
  reg [3:0]IN; reg ENABLE; 
  wire [3:0]OUT; 
	BF3 U4(IN, ENABLE, OUT);

  initial begin
	#5
    $display("\n");
	$display("Ejercicio 4");
    $display("Ej4 IN | OUT");
    $display("-----------------");
    $monitor("%b %b | %b", ENABLE, IN, OUT);
       ENABLE = 0; IN = 1;
    #1 ENABLE = 1;
	#10 ENABLE = 0;
	#5 IN = 5;
	#5 IN = 15;
	#5 ENABLE = 1;
	#5 IN = 3;
	#5 IN = 6;
	#5 ENABLE = 0;

  end
	initial
    #50 $finish;
  initial begin
    $dumpfile("Ej4_tb.vcd");
    $dumpvars(0, Ej4);
  end
endmodule