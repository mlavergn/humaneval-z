func matchParens(_ lst: [String]) -> String {
    func check(_ s: String) -> Bool {
        var val = 0
        for c in s {
            val += c == "(" ? 1 : -1
            if val < 0 { return false }
        }
        return val == 0
    }
    return check(lst[0] + lst[1]) || check(lst[1] + lst[0]) ? "Yes" : "No"
}
