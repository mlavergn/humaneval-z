func removeVowels(_ text: String) -> String {
    return text.filter { !"aeiouAEIOU".contains($0) }
}
