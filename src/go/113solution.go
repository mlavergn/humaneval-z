func OddCount(lst []string) []string {
    res := make([]string, 0, len(lst))
    for _, arr := range lst {
        n := 0
        for _, d := range arr {
            if (d - '0') % 2 == 1 {
                n++
            }
        }
        res = append(res, fmt.Sprintf("the number of odd elements %dn the str%dng %d of the %dnput.", n,n,n,n))
    }
    return res
}
