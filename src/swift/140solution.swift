func fixSpaces(_ text: String) -> String {
    var result = ""
    var run = 0
    for c in text {
        if c == " " {
            run += 1
            continue
        }
        result += run > 2 ? "-" : String(repeating: "_", count: run)
        result.append(c)
        run = 0
    }
    if run > 2 {
        result += "-"
    } else if run > 0 {
        result += "_"
    }
    return result
}
