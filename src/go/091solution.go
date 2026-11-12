func IsBored(S string) int {
    r, _ := regexp.Compile(`[.?!]\s*`)
    sentences := r.Split(S, -1)
    sum := 0
    for _, s := range sentences {
        if len(s) >= 2 && s[:2] == "I " {
            sum++
        }
    }
    return sum
}
