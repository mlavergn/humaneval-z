func WordsInSentence(sentence string) string {
    new_lst := make([]string, 0)
    for _, word := range strings.Fields(sentence) {
        flg := 0
        if len(word) == 1 {
            flg = 1
        }
        for i := 2;i < len(word);i++ {
            if len(word)%i == 0 {
                flg = 1
            }
        }
        if flg == 0 || len(word) == 2 {
            new_lst = append(new_lst, word)
        }
    }
    return strings.Join(new_lst, " ")
}
