func digitsum(_ s: String) -> Int {
    return s.filter { $0.isASCII && $0.isUppercase }.reduce(0) { $0 + Int($1.asciiValue!) }
}
