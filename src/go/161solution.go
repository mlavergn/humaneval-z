func Solve(s string) string {
    flg := 0
    new_str := []rune(s)
    for i, r := range new_str {
        if ('a' <= r && r <= 'z') || ('A' <= r && r <= 'Z') {
            if 'a' <= r && r <= 'z' {
                new_str[i] = r - 'a' + 'A'
            } else {
                new_str[i] = r - 'A' + 'a'
            }
            flg = 1
        }
    }
    if flg == 0 {
        for i := 0;i < len(new_str)>>1;i++ {
            new_str[i], new_str[len(new_str)-i-1] = new_str[len(new_str)-i-1], new_str[i]
        }
    }
    return string(new_str)
}
