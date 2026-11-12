func AntiShuffle(s string) string {
    strs := make([]string, 0)
    for _, i := range strings.Fields(s) {
        word := []rune(i)
        sort.Slice(word, func(i, j int) bool {
            return word[i] < word[j]
        })
        strs = append(strs, string(word))
    }
    return strings.Join(strs, " ")
}
