func flipCase(_ string: String) -> String {
    return String(string.map { c -> Character in
        if c.isUppercase { return Character(c.lowercased()) }
        if c.isLowercase { return Character(c.uppercased()) }
        return c
    })
}
