module Ej5();
  reg [6:0]DAA;  
  wire [12:0]OUT; 
	ROM U1(DAA, OUT);

  initial begin
	#5
	$display("Ej5 5");
    $display("   DAA     |      OUT");
    $display("------------------------");
    $monitor("%b | %b", DAA, OUT);
       DAA = 7'b0000000;
    #1 DAA = 7'b1111110;
	#1 DAA = 7'b0110110;
	#1 DAA = 7'b0101110;
	#1 DAA = 7'b1111110;
	#1 DAA = 7'b0000101;
	#1 DAA = 7'b0000001;
	#1 DAA = 7'b0001101;
	#1 DAA = 7'b0001001;
	#1 DAA = 7'b0010001;
	#1 DAA = 7'b0011001;
	#1 DAA = 7'b0100001;
	#1 DAA = 7'b0101001;
	#1 DAA = 7'b0110001;
	#1 DAA = 7'b0111001;
	#1 DAA = 7'b1000011;
	#1 DAA = 7'b1000001;
	#1 DAA = 7'b1001011;
	#1 DAA = 7'b1001001;
	#1 DAA = 7'b1010001;
	#1 DAA = 7'b1011001;
	#1 DAA = 7'b1100001;
	#1 DAA = 7'b1101001;
	#1 DAA = 7'b1110001;
	#1 DAA = 7'b1111001;
	#1 DAA = 7'b1011011;
	#1 DAA = 7'b1011101;
	#1 DAA = 7'b1011111;

  end
	initial
    #30 $finish;
  initial begin
    $dumpfile("ej5_tb.vcd");
    $dumpvars(0, Ej5);
  end
endmodule