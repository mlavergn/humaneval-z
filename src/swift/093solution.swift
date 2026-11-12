func encode(_ message: String) -> String {
    return String(message.map { c -> Character in
        let swapped = c.isLowercase ? Character(c.uppercased()) : c.isUppercase ? Character(c.lowercased()) : c
        guard "aeiouAEIOU".contains(swapped), let v = swapped.asciiValue else { return swapped }
        return Character(UnicodeScalar(v + 2))
    })
}
