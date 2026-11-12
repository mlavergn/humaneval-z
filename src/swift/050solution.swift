func decodeShift(_ s: String) -> String {
    let a = Character("a").asciiValue!
    return String(s.map { Character(UnicodeScalar(($0.asciiValue! - a + 21) % 26 + a)) })
}
