func compareOne(_ a: Value, _ b: Value) -> Value? {
    func toDouble(_ v: Value) -> Double {
        switch v {
        case .int(let i): return Double(i)
        case .double(let x): return x
        // A real number written as a string may use '.' or ','.
        case .string(let s): return Double(s.replacingOccurrences(of: ",", with: ".")) ?? 0
        default: return 0
        }
    }
    let fa = toDouble(a), fb = toDouble(b)
    if fa == fb { return nil }
    return fa > fb ? a : b
}
