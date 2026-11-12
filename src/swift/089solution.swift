func encrypt(_ s: String) -> String {
    let a = Character("a").asciiValue!
    return String(s.map { c in
        guard let v = c.asciiValue, c.isLowercase else { return c }
        return Character(UnicodeScalar((v - a + 2 * 2) % 26 + a))
    })
}
