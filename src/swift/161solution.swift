func solve(_ s: String) -> String {
    if !s.contains(where: { $0.isLetter }) { return String(s.reversed()) }
    return String(s.map { c -> Character in
        if c.isLowercase { return Character(c.uppercased()) }
        if c.isUppercase { return Character(c.lowercased()) }
        return c
    })
}
