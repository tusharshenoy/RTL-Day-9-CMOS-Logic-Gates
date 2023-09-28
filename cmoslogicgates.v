module cmoslogicgates(A,B,yor,yand,ynor,ynand,yxor,yxnor);
input A,B;
output yor,yand,ynor,ynand,yxor,yxnor;

supply1 Vdd;
supply0 Gnd;

//The Placement of wires has been shown in the Circuit

//OR Gate
wire w1,w2;
    pmos(w1,Vdd,A);
    pmos(w2,w1,B);

    nmos(w2,Gnd,A);
    nmos(w2,Gnd,B);

    pmos(yor,Vdd,w2);
    nmos(yor,Gnd,w2);


//AND Gate
wire w3,w4;
    pmos(w4,Vdd,A);
    pmos(w4,Vdd,B);

    nmos(w4,w3,A);
    nmos(w3,Gnd,B);

    pmos(yand,Vdd,w4);
    nmos(yand,Gnd,w4);


//NOR Gate
wire w5;
    pmos(w5,Vdd,A);
    pmos(ynor,w5,B);

    nmos(ynor,Gnd,A);
    nmos(ynor,Gnd,B);


//NAND Gate
wire w6;
    pmos(ynand,Vdd,A);
    pmos(ynand,Vdd,B);
    nmos(ynand,w6,A);
    nmos(w6,Gnd,B);


//XOR Gate
wire w7,w8,w9;
    pmos(w7,Vdd,A);
    pmos(w7,Vdd,B);

    pmos(yxor,w7,~A);
    pmos(yxor,w7,~B);

    nmos(yxor,w8,A);
    nmos(yxor,w9,~A);
    nmos(w8,Gnd,B);
    nmos(w9,Gnd,~B);


//XNOR Gate
wire w10,w11,w12;
    pmos(w10,Vdd,~A);
    pmos(w10,Vdd,B);

    pmos(yxnor,w10,A);
    pmos(yxnor,w10,~B);

    nmos(yxnor,w11,~A);
    nmos(yxnor,w12,A);
    nmos(w11,Gnd,B);
    nmos(w12,Gnd,~B);

endmodule
