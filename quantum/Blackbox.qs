namespace quantum {
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Diagnostics;
    
    operation ConstantZero(input: Qubit, output: Qubit): Unit {
    // Do nothing
    }
    operation ConstantOne(input: Qubit, output: Qubit) : Unit {
        X(output);
    }
    operation Identity(input: Qubit, output: Qubit) : Unit {
        CNOT(input, output);
    }
    operation Negation(input: Qubit, output: Qubit) : Unit {
        CNOT(input, output);
        X(input);
    }
}