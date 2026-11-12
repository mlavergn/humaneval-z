func Skjkasdkd(lst []int) int {
    isPrime := func(n int) bool {
        for i := 2; i < int(math.Pow(float64(n), 0.5)+1); i++ {
            if n%i == 0 {
                return false
            }
        }
        return true
    }
    maxx := 0
    i := 0
    for i < len(lst) {
        if lst[i] > maxx && isPrime(lst[i]) {
            maxx = lst[i]
        }
        i++
    }
    sum := 0
    for _, d := range strconv.Itoa(maxx) {
        sum += int(d - '0')
    }
    return sum
}
