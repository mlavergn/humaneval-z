func splitWords(_ txt: String) -> SplitResult {
    if txt.contains(" ") {
        return .words(txt.split(whereSeparator: { $0.isWhitespace }).map(String.init))
    }
    if txt.contains(",") {
        return .words(txt.split(separator: ",", omittingEmptySubsequences: false).map(String.init))
    }
    let a = Character("a").asciiValue!
    return .count(txt.filter { $0.isASCII && $0.isLowercase && ($0.asciiValue! - a) % 2 == 1 }.count)
}
