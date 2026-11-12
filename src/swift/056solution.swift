func correctBracketing(_ brackets: String) -> Bool {
    var count = 0
    for c in brackets {
        if c == "<" {
            count += 1
        } else if c == ">" {
            count -= 1
        }
        if count < 0 { return false }
    }
    return count == 0
}
