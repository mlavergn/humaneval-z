func doAlgebra(operator operators: [String], operand: [Int]) -> Int {
    var ops = operators
    var vals = operand
    while vals.count > 1 {
        // Leftmost of *, //, ** first; otherwise the leftmost operator.
        let pos = ops.firstIndex(where: { ["*", "//", "**"].contains($0) }) ?? 0
        let a = vals[pos], b = vals[pos + 1]
        switch ops[pos] {
        case "+": vals[pos] = a + b
        case "-": vals[pos] = a - b
        case "*": vals[pos] = a * b
        case "//": vals[pos] = a / b
        case "**": vals[pos] = Int(pow(Double(a), Double(b)))
        default: fatalError("unknown operator \(ops[pos])")
        }
        ops.remove(at: pos)
        vals.remove(at: pos + 1)
    }
    return vals[0]
}
