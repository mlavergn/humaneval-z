func FlipCase(str string) string {
    result := []rune{}
    for _, c := range str {
        if c >= 'A' && c <= 'Z' {
            result = append(result, 'a' + ((c - 'A' + 26) % 26))
        } else if c >= 'a' && c <= 'z' {
            result = append(result, 'A' + ((c - 'a' + 26) % 26))
        } else {
            result = append(result, c)
        }
    }
    return string(result)
}
