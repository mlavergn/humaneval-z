func allPrefixes(_ string: String) -> [String] {
    let chars = Array(string)
    return chars.indices.map { String(chars[...$0]) }
}
