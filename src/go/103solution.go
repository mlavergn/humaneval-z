func RoundedAvg(n, m int) interface{} {
    if m < n {
        return -1
    }
    summation := 0
    for i := n;i < m+1;i++{
        summation += i
    }
    return fmt.Sprintf("0b%b", int(math.Round(float64(summation)/float64(m - n + 1))))
}
