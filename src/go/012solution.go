func Longest(strings []string) interface{}{
    if strings == nil || len(strings) == 0 {
        return nil
    }
    maxlen := 0
    maxi := 0
    for i, s := range strings {
        if maxlen < len(s) {
            maxlen = len(s)
            maxi = i
        }
    }
    return strings[maxi]
}
