# UmarCircuit

This repository contains a Circom circuit designed by Me (Umar). The circuit's purpose is to take two inputs `a` and `b` and produce an output `f`, such that `f` is 0 when `a` is 0 and `b` is 1.

## Circuit Description

The circuit is designed using the Circom language, version 2.0.0. It consists of three components: `andGate1`, `notGate`, and `andGate2`. The main circuit template is `UmarCircuit`, which connects these components to create the desired logic.

### Components

1. `andGate1`: An AND gate that takes inputs `a` and `b` and outputs their logical AND result, which is connected to the signal `c`.
2. `notGate`: A NOT gate that takes input `c` and outputs its logical negation, which is connected to the signal `d`.
3. `andGate2`: Another AND gate that takes inputs `d` and `a` and outputs their logical AND result, which is the final output `f`.

### Circuit Logic

1. The input signals `a` and `b` are connected to the first AND gate (`andGate1`).
2. The output of `andGate1`, represented by signal `c`, is connected to the NOT gate (`notGate`).
3. The output of `notGate`, represented by signal `d`, is connected to the second AND gate (`andGate2`).
4. The second AND gate takes inputs `d` and `a`, and its output, represented by signal `f`, represents the final result of the circuit.

## Deployed Contract

The circuit has been deployed on the Mumbai test network using the appropriate tools. The contract's address and transaction details can be found in the deployment logs.

## Usage

To use this circuit for other inputs or different logical operations, the `UmarCircuit` template can be modified accordingly. By changing the logic of the gates and the connections, the circuit can perform various computations based on the inputs.

## Authors

- [Umar Khan](https://github.com/UmarKhan19)
