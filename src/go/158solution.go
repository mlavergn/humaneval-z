func FindMax(words []string) string {
    key := func (word string) (int, string) {
        set := make(map[rune]struct{})
        for _, r := range word {
            set[r] = struct{}{}
        }
        return -len(set), word
    }
    sort.SliceStable(words, func(i, j int) bool {
        ia, ib := key(words[i])
        ja, jb := key(words[j])
        if ia == ja {
            return ib < jb
        }
        return ia < ja
    })
    return words[0]
}
