func parseMusic(_ musicString: String) -> [Int] {
    let beats = ["o": 4, "o|": 2, ".|": 1]
    return musicString.split(separator: " ", omittingEmptySubsequences: false).compactMap { beats[String($0)] }
}
