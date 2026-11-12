func stringSequence(_ n: Int) -> String {
    guard n >= 0 else { return "" }
    return (0...n).map(String.init).joined(separator: " ")
}
