func ReverseDelete(s,c string) [2]interface{} {
    rs := make([]rune, 0)
    for _, r := range s {
        if !strings.ContainsRune(c, r) {
            rs = append(rs, r)
        }
    }
    t := true
    for i := 0;i < len(rs)>>1;i++ {
        if rs[i] != rs[len(rs)-i-1] {
            t=false
            break
        }
    }
    return [2]interface{}{string(rs), t}
}
