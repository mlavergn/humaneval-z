func SelectWords(s string, n int) []string {
    result := make([]string, 0)
    for _, word := range strings.Fields(s) {
        n_consonants := 0
        lower := strings.ToLower(word)
        for i := 0;i < len(word); i++ {
            if !bytes.Contains([]byte("aeiou"), []byte{lower[i]}) {
                n_consonants++
            }
        }
        if n_consonants == n{
            result = append(result, word)
        }
    }
    return result
}
