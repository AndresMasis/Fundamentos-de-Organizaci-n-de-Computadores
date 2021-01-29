// Testbench
module multplexorPrueba;
    reg in0, in1, in2, in3, s0, s1;
    wire out;

    mux_4bits cg(in0, in1, in2, in3, s0, s1, out);
    
    initial begin

		$dumpfile("dump.out");
		$dumpvars(0,multplexorPrueba);

		in0 = 1'b1;
        in1 = 1'b0;
        in2 = 1'b1;
        in3 = 1'b0;

        s0 = 1'b0;
        s1 = 1'b1;
	  	#50
		$finish;
	end

    initial 
		$monitor("En %2t,salio %b", $time, out);
        
endmodule


module mux_4bits(in0, in1, in2, in3, s0, s1, out);

    input in0, in1, in2, in3, s0, s1;
    output out;

    wire cable0, cable1, cable2;

    not #(1) g0(cable0, s1);

    mux_2bits multiplexor0(in0, in1, s0, cable0, cable1);
    mux_2bits multiplexor1(in2, in3, s0, s1, cable2);

    or #(1) g1(out,cable1,cable2);


endmodule


module mux_2bits(in0, in1, s, enable, out);

    input in0, in1, s, enable;
    output out;

    wire cable0, cable1, cable2, cable3;

    not #(1) g0(cable0, s);
    and #(2) g1(cable1,in0, cable0);
    and #(2) g2(cable2,in1,s);
    or #(1) g3(cable3,cable1,cable2);
    and #(2) g4(out,cable3,enable);

endmodule