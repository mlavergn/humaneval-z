func correctBracketing(_ brackets: String) -> Bool {
    var open = 0
    for c in brackets {
        if c == "(" {
            open += 1
        } else if c == ")" {
            open -= 1
        }
        if open < 0 { return false }
    }
    return open == 0
}
