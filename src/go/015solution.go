func StringSequence(n int) string{
    var seq string
    for i := 0; i <= n; i++ {
        seq += strconv.Itoa(i)
        if i != n {
            seq += " "
        }
    }
    return seq
}
