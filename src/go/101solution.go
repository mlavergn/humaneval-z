func WordsString(s string) []string {
    s_list := make([]rune, 0)

    for _, c := range s {
        if c == ',' {
            s_list = append(s_list, ' ')
        } else {
            s_list = append(s_list, c)
        }
    }
    return strings.Fields(string(s_list))
}
