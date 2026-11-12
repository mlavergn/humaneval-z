func Encode(message string) string {
    vowels := "aeiouAEIOU"
    vowels_replace := make(map[rune]rune)
    for _, c := range vowels {
        vowels_replace[c] = c + 2
    }
    result := make([]rune, 0, len(message))
    for _, c := range message {
        if 'a' <= c && c <= 'z' {
            c += 'A' - 'a'
        } else if 'A' <= c && c <= 'Z' {
            c += 'a' - 'A'
        }
        if strings.ContainsRune(vowels, c) {
            result = append(result, vowels_replace[c])
        } else {
            result = append(result, c)
        }
    }
    return string(result)
}
