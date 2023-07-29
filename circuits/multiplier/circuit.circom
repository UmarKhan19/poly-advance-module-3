pragma circom 2.0.0;

template UmarCircuit () {  

// Signal inputs

signal input a;
signal input b;


signal c;
signal d;

signal output e;

//Gates

component orGate = OR();
component notGate = NOT();
component andGate = AND();

//circuit logic

orGate.b <== b;
orGate.a <== a;
c <== orGate.out;

andGate.a <== c;
andGate.b <== a;
d <== andGate.out;

notGate.in <== d;
e <== notGate.out;

log("Output e = ", e);
   
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
