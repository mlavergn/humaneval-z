func getClosestVowel(_ word: String) -> String {
    let c = Array(word)
    if c.count < 3 { return "" }
    let vowels = "aeiouAEIOU"
    for i in stride(from: c.count - 2, to: 0, by: -1) {
        if vowels.contains(c[i]) && !vowels.contains(c[i + 1]) && !vowels.contains(c[i - 1]) {
            return String(c[i])
        }
    }
    return ""
}
