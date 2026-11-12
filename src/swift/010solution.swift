func makePalindrome(_ string: String) -> String {
    if string.trimmingCharacters(in: .whitespaces).isEmpty { return "" }
    let chars = Array(string)
    var beginningOfSuffix = 0
    while !isPalindrome(String(chars[beginningOfSuffix...])) {
        beginningOfSuffix += 1
    }
    return string + String(chars[..<beginningOfSuffix].reversed())
}
