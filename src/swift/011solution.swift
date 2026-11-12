func stringXor(_ a: String, _ b: String) -> String {
    return String(zip(a, b).map { $0 == $1 ? "0" : "1" })
}
