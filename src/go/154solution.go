func CycpatternCheck(a , b string) bool {
    l := len(b)
    pat := b + b
    for i := 0;i < len(a) - l + 1; i++ {
        for j := 0;j<l + 1;j++ {
            if a[i:i+l] == pat[j:j+l] {
                return true
            }
        }
    }
    return false
}
