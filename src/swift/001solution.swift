func separateParenGroups(_ parenString: String) -> [String] {
    var result: [String] = []
    var current = ""
    var depth = 0
    for c in parenString {
        if c == "(" {
            depth += 1
            current.append(c)
        } else if c == ")" {
            depth -= 1
            current.append(c)
            if depth == 0 {
                result.append(current)
                current = ""
            }
        }
    }
    return result
}
