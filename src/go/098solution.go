func CountUpper(s string) int {
    count := 0
    runes := []rune(s)
    for i := 0; i < len(runes); i += 2 {
        if strings.ContainsRune("AEIOU", runes[i]) {
            count += 1
        }
    }
    return count
}
