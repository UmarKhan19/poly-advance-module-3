pragma circom 2.0.0;

template UmarCircuit () {  

// Signal inputs

signal input a;
signal input b;


signal c;
signal d;

signal output f;

//Gates

component andGate1 = AND();
component notGate = NOT();
component andGate2 = AND();

//circuit logic

andGate1.a <== a;
andGate1.b <== b;
c <== andGate1.out;

notGate.in <== c;
d <== notGate.out;

andGate2.a <== d;
andGate2.b <== a;
f <== andGate2.out;


   
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

component main = UmarCircuit();