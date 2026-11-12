func SplitWords(txt string) interface{} {
    if strings.Contains(txt, " ") {
        return strings.Fields(txt)
    } else if strings.Contains(txt, ",") {
        return strings.Split(txt, ",")
    }
    cnt := 0
    for _, r := range txt {
        if 'a' <= r && r <= 'z' && (r-'a')&1==1 {
            cnt++
        }
    }
    return cnt
}
