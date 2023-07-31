pragma circom 2.0.0;

template UmarCircuit () {  

// Signal inputs

signal input a;
signal input b;


signal x;
signal y;

signal output q;

//Gates

component orGate = OR();
component notGate = NOT();
component andGate = AND();

//circuit logic

andGate.a <== a;
andGate.b <== b;
x <== andGate.out;

notGate.in <== b;
y <== notGate.out;

orGate.a <== x;
orGate.b <== y;
q <== orGate.out;

log("Output q = ", q);
   
}


template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b;
}

template NOT() {
    signal input in;
    signal output out;

    out <== 1 + in - 2*in;
}

template OR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a*b;
}

component main = UmarCircuit();
