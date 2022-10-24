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
    operation IsBlackBoxConstant(blackbox:((Qubit, Qubit)=> Unit)):(Bool) {
        mutable inputResult = Zero;
        mutable outputResult = Zero;
        use qbites = Qubit[2] {
            let qbits = [];
            let input = qbits[0];
            let output = qbits[1];
            X(input);
            X(output);
            H(input);
            H(output);
            set inputResult = M(input);
            set outputResult = M(output);
            ResetAll(qbits);
        }
        return One == inputResult;
    }
}