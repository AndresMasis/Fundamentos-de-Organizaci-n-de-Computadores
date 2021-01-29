module prueba;
    reg a31, a30, a29, a28, a27, a26, a25, a24, a23, a22, a21, a20, a19, a18, a17, a16, a15, a14, a13, a12, a11, a10, a9, a8, a7, a6, a5, a4, a3, a2, a1, a0, 
        b31, b30, b29, b28, b27, b26, b25, b24, b23, b22, b21, b20, b19, b18, b17, b16, b15, b14, b13, b12, b11, b10, b9, b8, b7, b6, b5, b4, b3, b2, b1, b0,
        w,x,y,z;

    wire r31, r30, r29, r28, r27, r26, r25, r24, r23, r22, r21, r20, r19, r18, r17, r16, r15, r14, r13, r12, r11, r10, r9, r8, r7, r6, r5, r4, r3, r2, r1, r0, 
        overflow;

    componente_aritmetico cg(a31, a30, a29, a28, a27, a26, a25, a24, a23, a22, a21, a20, a19, a18, a17, a16, a15, a14, a13, a12, a11, a10, a9, a8, a7, a6, a5, a4, a3, a2, a1, a0, 
    b31, b30, b29, b28, b27, b26, b25, b24, b23, b22, b21, b20, b19, b18, b17, b16, b15, b14, b13, b12, b11, b10, b9, b8, b7, b6, b5, b4, b3, b2, b1, b0,
    w,x,y,z,
    r31, r30, r29, r28, r27, r26, r25, r24, r23, r22, r21, r20, r19, r18, r17, r16, r15, r14, r13, r12, r11, r10, r9, r8, r7, r6, r5, r4, r3, r2, r1, r0, 
    overflow);
    
    initial begin
		$dumpfile("dump.out");
		$dumpvars(0,prueba);
		a31 = 1'b0; a30 = 1'b0; a29 = 1'b0; a28 = 1'b0; a27 = 1'b0; a26 = 1'b0; a25 = 1'b0; a24 = 1'b0; a23 = 1'b0; a22 = 1'b0; a21 = 1'b0; a20 = 1'b0; a19 = 1'b0; a18 = 1'b0; a17 = 1'b0; a16 = 1'b0; a15 = 1'b0; a14 = 1'b0; a13 = 1'b0; a12 = 1'b0; a11 = 1'b0; a10 = 1'b0; a9 = 1'b0; a8 = 1'b0; a7 = 1'b0; a6 = 1'b0; a5 = 1'b0; a4 = 1'b0; a3 = 1'b1; a2 = 1'b1; a1 = 1'b1; a0 = 1'b0;
        b31 = 1'b0; b30 = 1'b0; b29 = 1'b0; b28 = 1'b0; b27 = 1'b0; b26 = 1'b0; b25 = 1'b0; b24 = 1'b0; b23 = 1'b0; b22 = 1'b0; b21 = 1'b0; b20 = 1'b0; b19 = 1'b0; b18 = 1'b0; b17 = 1'b0; b16 = 1'b0; b15 = 1'b0; b14 = 1'b0; b13 = 1'b0; b12 = 1'b0; b11 = 1'b0; b10 = 1'b0; b9 = 1'b0; b8 = 1'b0; b7 = 1'b0; b6 = 1'b0; b5 = 1'b0; b4 = 1'b0; b3 = 1'b0; b2 = 1'b0; b1 = 1'b1; b0 = 1'b0; 
        w = 1'b1; x = 1'b1; y = 1'b0; z = 1'b1;
        #500
		$finish;
	end

    initial 
		$monitor("En %2t, Suma = %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b %b",
                 $time,
                overflow,
                r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24, r25, r26, r27, r28, r29, r30, r31);        
endmodule

/*Testbench interprete
module prueba;
    reg x,y,z;

    wire carryOut,seleccion;

    interprete cg(w,x,y,z,carryOut,seleccion);

    
    initial begin

		$dumpfile("dump.out");
		$dumpvars(0,prueba);

        x = 1'b1; y = 1'b1; z = 1'b1;


        #50
		$finish;
	end

    initial 
		$monitor("En %2t, carryOut = %b,seleccion = %b",
                 $time,
                carryOut, seleccion);
        
endmodule*/

/*
Testbench interprete_seleccion
module prueba;
    reg x,y,z;

    wire seleccion;

    interprete_seleccion cg(x,y,z,seleccion);
    
    initial begin

		$dumpfile("dump.out");
		$dumpvars(0,prueba);

        x = 1'b1; y = 1'b0; z = 1'b1;


        #50
		$finish;
	end

    initial 
		$monitor("En %2t, seleccion = %b",
                 $time,
                seleccion);
        
endmodule*/

/*
Testbench interprete_carry
module prueba;
    reg x,y,z;

    wire carryOut;

    interprete_carry cg(x,y,z,carryOut);
    
    initial begin

		$dumpfile("dump.out");
		$dumpvars(0,prueba);

        x = 1'b1; y = 1'b0; z = 1'b1;


        #50
		$finish;
	end

    initial 
		$monitor("En %2t, seleccion = %b",
                 $time,
                carryOut);
        
endmodule
*/











/*
Este es un modulo es el componente aritmetico final

Recibe de entradas 4 bits, los que forman el codigo
Las salidas son el bit de seleccion y el bit el bit de carry
*/

module componente_aritmetico(a31, a30, a29, a28, a27, a26, a25, a24, a23, a22, a21, a20, a19, a18, a17, a16, a15, a14, a13, a12, a11, a10, a9, a8, a7, a6, a5, a4, a3, a2, a1, a0, 
    b31, b30, b29, b28, b27, b26, b25, b24, b23, b22, b21, b20, b19, b18, b17, b16, b15, b14, b13, b12, b11, b10, b9, b8, b7, b6, b5, b4, b3, b2, b1, b0,
    w,x,y,z,
    r31, r30, r29, r28, r27, r26, r25, r24, r23, r22, r21, r20, r19, r18, r17, r16, r15, r14, r13, r12, r11, r10, r9, r8, r7, r6, r5, r4, r3, r2, r1, r0, 
    overflow);


    input a31, a30, a29, a28, a27, a26, a25, a24, a23, a22, a21, a20, a19, a18, a17, a16, a15, a14, a13, a12, a11, a10, a9, a8, a7, a6, a5, a4, a3, a2, a1, a0, 
        b31, b30, b29, b28, b27, b26, b25, b24, b23, b22, b21, b20, b19, b18, b17, b16, b15, b14, b13, b12, b11, b10, b9, b8, b7, b6, b5, b4, b3, b2, b1, b0,
        w,x,y,z;

    output r31, r30, r29, r28, r27, r26, r25, r24, r23, r22, r21, r20, r19, r18, r17, r16, r15, r14, r13, r12, r11, r10, r9, r8, r7, r6, r5, r4, r3, r2, r1, r0, 
        overflow;

    wire cable_carry, cable_seleccion, cableYnegado,
        cable95, cable94, cable93, cable92, cable91, cable90, cable89, cable88, cable87, cable86, cable85, cable84, cable83, cable82, cable81, cable80, cable79, cable78, cable77, cable76, cable75, cable74, cable73, cable72, cable71, cable70, cable69, cable68, cable67, cable66, cable65, cable64,
        cable63, cable62, cable61, cable60, cable59, cable58, cable57, cable56, cable55, cable54, cable53, cable52, cable51, cable50, cable49, cable48, cable47, cable46, cable45, cable44, cable43, cable42, cable41, cable40, cable39, cable38, cable37, cable36, cable35, cable34, cable33, cable32, 
        cable31, cable30, cable29, cable28, cable27, cable26, cable25, cable24, cable23, cable22, cable21, cable20, cable19, cable18, cable17, cable16, cable15, cable14, cable13, cable12, cable11, cable10, cable9, cable8, cable7, cable6, cable5, cable4, cable3, cable2, cable1, cable0;

    // Se niega y, para el and
    not #(1) g0(cableYnegado, y);

    // Se hace un and para bloquear el operando a si es neceasrio
    and_grande and_cg(a31, a30, a29, a28, a27, a26, a25, a24, a23, a22, a21, a20, a19, a18, a17, a16, a15, a14, a13, a12, a11, a10, a9, a8, a7, a6, a5, a4, a3, a2, a1, a0, cableYnegado,
    cable95, cable94, cable93, cable92, cable91, cable90, cable89, cable88, cable87, cable86, cable85, cable84, cable83, cable82, cable81, cable80, cable79, cable78, cable77, cable76, cable75, cable74, cable73, cable72, cable71, cable70, cable69, cable68, cable67, cable66, cable65, cable64);

    // Se implementa el interprete para saber que hacer
    interprete interprete_cg(w,x,y,z,cable_carry,cable_seleccion);

    // Se niegan los bits del segundo valor
    inversor b_negado(b31, b30, b29, b28, b27, b26, b25, b24, b23, b22, b21, b20, b19, b18, b17, b16, b15, b14, b13, b12, b11, b10, b9, b8, b7, b6, b5, b4, b3, b2, b1, b0,
        cable31, cable30, cable29, cable28, cable27, cable26, cable25, cable24, cable23, cable22, cable21, cable20, cable19, cable18, cable17, cable16, cable15, cable14, cable13, cable12, cable11, cable10, cable9, cable8, cable7, cable6, cable5, cable4, cable3, cable2, cable1, cable0);

    // Se implementa el multiplexor, para saber si pasa el valor de B original o con los bits invertidos
    mux2_1 mux_cg(b31, b30, b29, b28, b27, b26, b25, b24, b23, b22, b21, b20, b19, b18, b17, b16, b15, b14, b13, b12, b11, b10, b9, b8, b7, b6, b5, b4, b3, b2, b1, b0,
        cable31, cable30, cable29, cable28, cable27, cable26, cable25, cable24, cable23, cable22, cable21, cable20, cable19, cable18, cable17, cable16, cable15, cable14, cable13, cable12, cable11, cable10, cable9, cable8, cable7, cable6, cable5, cable4, cable3, cable2, cable1, cable0,
        cable_seleccion,
        cable63, cable62, cable61, cable60, cable59, cable58, cable57, cable56, cable55, cable54, cable53, cable52, cable51, cable50, cable49, cable48, cable47, cable46, cable45, cable44, cable43, cable42, cable41, cable40, cable39, cable38, cable37, cable36, cable35, cable34, cable33, cable32);

    // Se suma el valor de a, más lo que paso el multiplexor
    sumador_32bits sumador_cg(cable64, cable65, cable66, cable67, cable68, cable69, cable70, cable71, cable72, cable73, cable74, cable75, cable76, cable77, cable78, cable79, cable80, cable81, cable82, cable83, cable84, cable85, cable86, cable87, cable88, cable89, cable90, cable91, cable92, cable93, cable94, cable95, 
        cable32, cable33, cable34, cable35, cable36, cable37, cable38, cable39, cable40, cable41, cable42, cable43, cable44, cable45, cable46, cable47, cable48, cable49, cable50, cable51, cable52, cable53, cable54, cable55, cable56, cable57, cable58, cable59, cable60, cable61, cable62, cable63, 
        cable_carry,
        r31, r30, r29, r28, r27, r26, r25, r24, r23, r22, r21, r20, r19, r18, r17, r16, r15, r14, r13, r12, r11, r10, r9, r8, r7, r6, r5, r4, r3, r2, r1, r0, 
        overflow);

endmodule


/*
Este es un modulo determina que valor de seleccion y el valor del carry segun el codigo que puso el usuario
Recibe de entradas 4 bits, los que forman el codigo
Las salidas son el bit de seleccion y el bit el bit de carry
*/
module interprete(w,x,y,z,carryOut,seleccion);

    input w,x,y,z;
    output carryOut, seleccion;

    // Se implementan los modulos anteriores
    interprete_carry carry_cg(x,y,z,carryOut);
    interprete_seleccion seleccion_cg(x,y,z,seleccion);

endmodule

/*
Este es un modulo determina que valor de seleccion se le debe pasar al multiplexor segun el codigo que puso el usuario
Recibe de entradas 4 bits, los que forman el codigo
Las salida es el bit de seleccion que se  va a pasar
*/
module interprete_seleccion(x,y,z,seleccion);

    input x,y,z;
    output seleccion;

    wire cableNoty, cableNotz,
        cable0, cable1, cable2, cable3;

    // Se declaran las compuertas que generan la operación
    not #(1) g0(cableNoty,y);
    not #(1) g1(cableNotz,z);

    and #(2) g2(cable0,cableNoty,x);
    and #(2) g3(cable1,cable0,z);

    and #(2) g4(cable2,y,x);
    and #(2) g5(cable3,cable2,cableNotz);

    or #(1) g6(seleccion,cable3,cable1);

endmodule


/*
Este es un modulo determina cual carry le debe pasar al sumador segun el codigo que puso el usuario
Recibe de entradas 4 bits, los que forman el codigo
Las salida es el bit de carry que se  va a pasar
*/
module interprete_carry(x,y,z,carryOut);

    input x,y,z;
    output carryOut;

    wire cable0, cable1;

    // Se declaran las compuertas que generan la operación
    and #(2) g0(cable0,x,y);
    and #(2) g1(cable1,x,z);
    or #(1) g2(carryOut,cable0,cable1);

endmodule


/*
Este es un modulo que suma un 32 bits más 32 bits
Recibe de entradas los 64 bits a sumar y un carry de entrada
Las salidas son los 32 bits del resultado el carry de salida
*/
module sumador_32bits(a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31,
                      b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15, b16, b17, b18, b19, b20, b21, b22, b23, b24, b25, b26, b27, b28, b29, b30, b31,
                      carryIn,
                      s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31,
                      overflow);

    input a0, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31,
        b0, b1, b2, b3, b4, b5, b6, b7, b8, b9, b10, b11, b12, b13, b14, b15, b16, b17, b18, b19, b20, b21, b22, b23, b24, b25, b26, b27, b28, b29, b30, b31,
        carryIn;
    output s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31,
        overflow;
    wire cable0, cable1, cable2, cable3, cable4, cable5, cable6;

    // Se encadenan 8 sumadores de 4 bits
    sumador_4bits sum0(a0,a1, a2, a3, b0, b1, b2, b3, carryIn, s0, s1, s2, s3, cable0);
    sumador_4bits sum1(a4,a5, a6, a7, b4, b5, b6, b7, cable0, s4, s5, s6, s7, cable1);
    sumador_4bits sum2(a8,a9, a10, a11, b8, b9, b10, b11, cable1, s8, s9, s10, s11, cable2);
    sumador_4bits sum3(a12,a13, a14, a15, b12, b13, b14, b15, cable2, s12, s13, s14, s15, cable3);
    sumador_4bits sum4(a16,a17, a18, a19, b16, b17, b18, b19, cable3, s16, s17, s18, s19, cable4);
    sumador_4bits sum5(a20,a21, a22, a23, b20, b21, b22, b23, cable4, s20, s21, s22, s23, cable5);
    sumador_4bits sum6(a24,a25, a26, a27, b24, b25, b26, b27, cable5, s24, s25, s26, s27, cable6);
    sumador_4bits sum7(a28,a29, a30, a31, b28, b29, b30, b31, cable6, s28, s29, s30, s31, overflow);

endmodule


/*
Este es un modulo que suma un 4 bits más 4 bits
Recibe de entradas los 8 bits a sumar y un carry de entrada
Las salidas son los 4 bits del resultado el carry de salida
*/
module sumador_4bits (a0,a1, a2, a3, b0, b1, b2, b3, carryInicio, s0, s1, s2, s3, carrySalida);

    input a0,a1, a2, a3, b0, b1, b2, b3, carryInicio;
    output s0, s1, s2, s3, carrySalida;

    wire cable0, cable1, cable2;

    // Se encadenan 4 sumadores
    sumador sumador0(a0, b0, carryInicio, s0, cable0);
    sumador sumador1(a1, b1, cable0, s1, cable1);
    sumador sumador2(a2, b2, cable1, s2, cable2);
    sumador sumador3(a3, b3, cable2, s3, carrySalida);

endmodule



/*
Este es un modulo que suma un bit más un bit
Recibe de entradas los 2 bits a sumar y un carry de entrada
Las salidas son el resultao y el carry de salida
*/
module sumador (a, b, carryIn, result, carryOut);

	input a, b, carryIn;
	output result, carryOut;

	wire cable0, cable1, cable2;

    // Se declaran las compuertas que generan la operación
	xor #(1) g1(cable0,a,b);
	and #(2) g2(cable1, a, b);
	xor #(1) g3(result, cable0,carryIn);
	and #(2) g4(cable2, cable0, carryIn);
	or #(1) g5(carryOut, cable1,cable2);

endmodule



/*
Este es un modulo selecciona uno de dos valores(cada uno de 32 bits)
Recibe de entradas el valor uno(32 bits), el valor dos(32 bits) y el bit de seleccion
La salida es el valor que se haya seleccionado (32 bits)
*/
module mux2_1(x31, x30, x29, x28, x27, x26, x25, x24, x23, x22, x21, x20, x19, x18, x17, x16, x15, x14, x13, x12, x11, x10, x9, x8, x7, x6, x5, x4, x3, x2, x1, x0, 
    y31, y30, y29, y28, y27, y26, y25, y24, y23, y22, y21, y20, y19, y18, y17, y16, y15, y14, y13, y12, y11, y10, y9, y8, y7, y6, y5, y4, y3, y2, y1, y0, s,
    out31, out30, out29, out28, out27, out26, out25, out24, out23, out22, out21, out20, out19, out18, out17, out16, out15, out14, out13, out12, out11, out10, out9, out8, out7, out6, out5, out4, out3, out2, out1, out0);

    input x31, x30, x29, x28, x27, x26, x25, x24, x23, x22, x21, x20, x19, x18, x17, x16, x15, x14, x13, x12, x11, x10, x9, x8, x7, x6, x5, x4, x3, x2, x1, x0, 
        y31, y30, y29, y28, y27, y26, y25, y24, y23, y22, y21, y20, y19, y18, y17, y16, y15, y14, y13, y12, y11, y10, y9, y8, y7, y6, y5, y4, y3, y2, y1, y0, s;
    output out31, out30, out29, out28, out27, out26, out25, out24, out23, out22, out21, out20, out19, out18, out17, out16, out15, out14, out13, out12, out11, out10, out9, out8, out7, out6, out5, out4, out3, out2, out1, out0;
    wire cableNot,
        cable63, cable62, cable61, cable60, cable59, cable58, cable57, cable56, cable55, cable54, cable53, cable52, cable51, cable50, cable49, cable48, cable47, cable46, cable45, cable44, cable43, cable42, cable41, cable40, cable39, cable38, cable37, cable36, cable35, cable34, cable33, cable32,
        cable31, cable30, cable29, cable28, cable27, cable26, cable25, cable24, cable23, cable22, cable21, cable20, cable19, cable18, cable17, cable16, cable15, cable14, cable13, cable12, cable11, cable10, cable9, cable8, cable7, cable6, cable5, cable4, cable3, cable2, cable1, cable0;

    // Bloquea uno o activa el and c01
    not #(1) g0(cableNot,s);

    and_grande cg0(x31, x30, x29, x28, x27, x26, x25, x24, x23, x22, x21, x20, x19, x18, x17, x16, x15, x14, x13, x12, x11, x10, x9, x8, x7, x6, x5, x4, x3, x2, x1, x0, cableNot,
        cable63, cable62, cable61, cable60, cable59, cable58, cable57, cable56, cable55, cable54, cable53, cable52, cable51, cable50, cable49, cable48, cable47, cable46, cable45, cable44, cable43, cable42, cable41, cable40, cable39, cable38, cable37, cable36, cable35, cable34, cable33, cable32);

    and_grande cg1(y31, y30, y29, y28, y27, y26, y25, y24, y23, y22, y21, y20, y19, y18, y17, y16, y15, y14, y13, y12, y11, y10, y9, y8, y7, y6, y5, y4, y3, y2, y1, y0, s,
        cable31, cable30, cable29, cable28, cable27, cable26, cable25, cable24, cable23, cable22, cable21, cable20, cable19, cable18, cable17, cable16, cable15, cable14, cable13, cable12, cable11, cable10, cable9, cable8, cable7, cable6, cable5, cable4, cable3, cable2, cable1, cable0);

    // Elige cual valor pasa
    or_grande cg(cable63, cable62, cable61, cable60, cable59, cable58, cable57, cable56, cable55, cable54, cable53, cable52, cable51, cable50, cable49, cable48, cable47, cable46, cable45, cable44, cable43, cable42, cable41, cable40, cable39, cable38, cable37, cable36, cable35, cable34, cable33, cable32,
        cable31, cable30, cable29, cable28, cable27, cable26, cable25, cable24, cable23, cable22, cable21, cable20, cable19, cable18, cable17, cable16, cable15, cable14, cable13, cable12, cable11, cable10, cable9, cable8, cable7, cable6, cable5, cable4, cable3, cable2, cable1, cable0,
        out31, out30, out29, out28, out27, out26, out25, out24, out23, out22, out21, out20, out19, out18, out17, out16, out15, out14, out13, out12, out11, out10, out9, out8, out7, out6, out5, out4, out3, out2, out1, out0);

endmodule



/*
Este es un modulo  aplica un or para cada uno de los 32 bits contra otro cada uno de otros 32 bits
Recibe de entradas los 32 bits de un lado y otros 32 bits del otro lado
Las salidas son los 32 bits de resultado de cada or
*/
module or_grande(x31, x30, x29, x28, x27, x26, x25, x24, x23, x22, x21, x20, x19, x18, x17, x16, x15, x14, x13, x12, x11, x10, x9, x8, x7, x6, x5, x4, x3, x2, x1, x0, 
    y31, y30, y29, y28, y27, y26, y25, y24, y23, y22, y21, y20, y19, y18, y17, y16, y15, y14, y13, y12, y11, y10, y9, y8, y7, y6, y5, y4, y3, y2, y1, y0, 
    out31, out30, out29, out28, out27, out26, out25, out24, out23, out22, out21, out20, out19, out18, out17, out16, out15, out14, out13, out12, out11, out10, out9, out8, out7, out6, out5, out4, out3, out2, out1, out0);

    input x31, x30, x29, x28, x27, x26, x25, x24, x23, x22, x21, x20, x19, x18, x17, x16, x15, x14, x13, x12, x11, x10, x9, x8, x7, x6, x5, x4, x3, x2, x1, x0, 
        y31, y30, y29, y28, y27, y26, y25, y24, y23, y22, y21, y20, y19, y18, y17, y16, y15, y14, y13, y12, y11, y10, y9, y8, y7, y6, y5, y4, y3, y2, y1, y0;
    output out31, out30, out29, out28, out27, out26, out25, out24, out23, out22, out21, out20, out19, out18, out17, out16, out15, out14, out13, out12, out11, out10, out9, out8, out7, out6, out5, out4, out3, out2, out1, out0;

    // Se declaran las compuertas que generan la operación
    or #(1) g31 (out31, x31, y31);
    or #(1) g30 (out30, x30, y30);
    or #(1) g29 (out29, x29, y29);
    or #(1) g28 (out28, x28, y28);
    or #(1) g27 (out27, x27, y27);
    or #(1) g26 (out26, x26, y26);
    or #(1) g25 (out25, x25, y25);
    or #(1) g24 (out24, x24, y24);
    or #(1) g23 (out23, x23, y23);
    or #(1) g22 (out22, x22, y22);
    or #(1) g21 (out21, x21, y21);
    or #(1) g20 (out20, x20, y20);
    or #(1) g19 (out19, x19, y19);
    or #(1) g18 (out18, x18, y18);
    or #(1) g17 (out17, x17, y17);
    or #(1) g16 (out16, x16, y16);
    or #(1) g15 (out15, x15, y15);
    or #(1) g14 (out14, x14, y14);
    or #(1) g13 (out13, x13, y13);
    or #(1) g12 (out12, x12, y12);
    or #(1) g11 (out11, x11, y11);
    or #(1) g10 (out10, x10, y10);
    or #(1) g9 (out9, x9, y9);
    or #(1) g8 (out8, x8, y8);
    or #(1) g7 (out7, x7, y7);
    or #(1) g6 (out6, x6, y6);
    or #(1) g5 (out5, x5, y5);
    or #(1) g4 (out4, x4, y4);
    or #(1) g3 (out3, x3, y3);
    or #(1) g2 (out2, x2, y2);
    or #(1) g1 (out1, x1, y1);
    or #(1) g0 (out0, x0, y0); 

endmodule


/*
Este es un modulo  aplica un and para cada uno de los 32 bits con un valor especifico
Recibe de entradas los 32 bits y el valor especifico
Las salidas son los 32 bits de resultado de cada and
*/
module and_grande(in31, in30, in29, in28, in27, in26, in25, in24, in23, in22, in21, in20, in19, in18, in17, in16, in15, in14, in13, in12, in11, in10, in9, in8, in7, in6, in5, in4, in3, in2, in1, in0, op,
out31, out30, out29, out28, out27, out26, out25, out24, out23, out22, out21, out20, out19, out18, out17, out16, out15, out14, out13, out12, out11, out10, out9, out8, out7, out6, out5, out4, out3, out2, out1, out0);

    input in31, in30, in29, in28, in27, in26, in25, in24, in23, in22, in21, in20, in19, in18, in17, in16, in15, in14, in13, in12, in11, in10, in9, in8, in7, in6, in5, in4, in3, in2, in1, in0, op;
    output out31, out30, out29, out28, out27, out26, out25, out24, out23, out22, out21, out20, out19, out18, out17, out16, out15, out14, out13, out12, out11, out10, out9, out8, out7, out6, out5, out4, out3, out2, out1, out0;

    // Se declaran las compuertas que generan la operación
    and #(2) g31 (out31, in31, op);
    and #(2) g30 (out30, in30, op);
    and #(2) g29 (out29, in29, op);
    and #(2) g28 (out28, in28, op);
    and #(2) g27 (out27, in27, op);
    and #(2) g26 (out26, in26, op);
    and #(2) g25 (out25, in25, op);
    and #(2) g24 (out24, in24, op);
    and #(2) g23 (out23, in23, op);
    and #(2) g22 (out22, in22, op);
    and #(2) g21 (out21, in21, op);
    and #(2) g20 (out20, in20, op);
    and #(2) g19 (out19, in19, op);
    and #(2) g18 (out18, in18, op);
    and #(2) g17 (out17, in17, op);
    and #(2) g16 (out16, in16, op);
    and #(2) g15 (out15, in15, op);
    and #(2) g14 (out14, in14, op);
    and #(2) g13 (out13, in13, op);
    and #(2) g12 (out12, in12, op);
    and #(2) g11 (out11, in11, op);
    and #(2) g10 (out10, in10, op);
    and #(2) g9 (out9, in9, op);
    and #(2) g8 (out8, in8, op);
    and #(2) g7 (out7, in7, op);
    and #(2) g6 (out6, in6, op);
    and #(2) g5 (out5, in5, op);
    and #(2) g4 (out4, in4, op);
    and #(2) g3 (out3, in3, op);
    and #(2) g2 (out2, in2, op);
    and #(2) g1 (out1, in1, op);
    and #(2) g0 (out0, in0, op);

endmodule

/*
Este es un modulo invierte el valor de cada uno de los 32 bits
Recibe de entradas los 32 bits para invertirlos
Las salidas son los 32 bits con los valores invertidos
*/
module inversor(in31, in30, in29, in28, in27, in26, in25, in24, in23, in22, in21, in20, in19, in18, in17, in16, in15, in14, in13, in12, in11, in10, in9, in8, in7, in6, in5, in4, in3, in2, in1, in0,
out31, out30, out29, out28, out27, out26, out25, out24, out23, out22, out21, out20, out19, out18, out17, out16, out15, out14, out13, out12, out11, out10, out9, out8, out7, out6, out5, out4, out3, out2, out1, out0);

    input in31, in30, in29, in28, in27, in26, in25, in24, in23, in22, in21, in20, in19, in18, in17, in16, in15, in14, in13, in12, in11, in10, in9, in8, in7, in6, in5, in4, in3, in2, in1, in0;
    output out31, out30, out29, out28, out27, out26, out25, out24, out23, out22, out21, out20, out19, out18, out17, out16, out15, out14, out13, out12, out11, out10, out9, out8, out7, out6, out5, out4, out3, out2, out1, out0;

    // Se declaran las compuertas que generan la operación
    not #(1) g31 (out31, in31);
    not #(1) g30 (out30, in30);
    not #(1) g29 (out29, in29);
    not #(1) g28 (out28, in28);
    not #(1) g27 (out27, in27);
    not #(1) g26 (out26, in26);
    not #(1) g25 (out25, in25);
    not #(1) g24 (out24, in24);
    not #(1) g23 (out23, in23);
    not #(1) g22 (out22, in22);
    not #(1) g21 (out21, in21);
    not #(1) g20 (out20, in20);
    not #(1) g19 (out19, in19);
    not #(1) g18 (out18, in18);
    not #(1) g17 (out17, in17);
    not #(1) g16 (out16, in16);
    not #(1) g15 (out15, in15);
    not #(1) g14 (out14, in14);
    not #(1) g13 (out13, in13);
    not #(1) g12 (out12, in12);
    not #(1) g11 (out11, in11);
    not #(1) g10 (out10, in10);
    not #(1) g9 (out9, in9);
    not #(1) g8 (out8, in8);
    not #(1) g7 (out7, in7);
    not #(1) g6 (out6, in6);
    not #(1) g5 (out5, in5);
    not #(1) g4 (out4, in4);
    not #(1) g3 (out3, in3);
    not #(1) g2 (out2, in2);
    not #(1) g1 (out1, in1);
    not #(1) g0 (out0, in0);

endmodule