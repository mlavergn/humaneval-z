func parseNestedParens(_ parenString: String) -> [Int] {
    return parenString.split(separator: " ", omittingEmptySubsequences: false).map { group in
        var depth = 0
        var maxDepth = 0
        for c in group {
            if c == "(" {
                depth += 1
                maxDepth = max(maxDepth, depth)
            } else {
                depth -= 1
            }
        }
        return maxDepth
    }
}
