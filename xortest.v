module xor_test(C,A,B);
output C;
input A,B;
supply0 GND;
supply1 PWR;
wire w1,w2;
pmos(C,PWR,A);
pmos(C,PWR,B);

nmos(C,w1,A);
nmos(w1,GND,B);
A=0;
B=0;
nmos(C,w2,A);
nmos(w2,GND,B);
endmodule

