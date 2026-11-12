func CheckIfLastCharIsALetter(txt string) bool {
    split := strings.Split(txt, " ")
    check := strings.ToLower(split[len(split)-1])
    if len(check) == 1 && 'a' <= check[0] && check[0] <= 'z' {
        return true
    }
    return false
}
