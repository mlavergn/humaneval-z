func Solve(N int) string {
    sum := 0
    for _, c := range strconv.Itoa(N) {
        sum += int(c - '0')
    }
    return fmt.Sprintf("%b", sum)
}
