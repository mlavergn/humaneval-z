func Encrypt(s string) string {
    d := "abcdefghijklmnopqrstuvwxyz"
    out := make([]rune, 0, len(s))
    for _, c := range s {
        pos := strings.IndexRune(d, c)
        if pos != -1 {
            out = append(out, []rune(d)[(pos+2*2)%26])
        } else {
            out = append(out, c)
        }
    }
    return string(out)
}
