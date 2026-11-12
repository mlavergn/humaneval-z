func cycpatternCheck(_ a: String, _ b: String) -> Bool {
    if b.isEmpty { return true }
    let chars = Array(b)
    return chars.indices.contains { shift in a.contains(String(chars[shift...] + chars[..<shift])) }
}
