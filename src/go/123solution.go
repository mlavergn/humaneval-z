func GetOddCollatz(n int) []int {
    odd_collatz := make([]int, 0)
    if n&1==1 {
        odd_collatz = append(odd_collatz, n)
    }
    for n > 1 {
        if n &1==0 {
            n>>=1
        } else {
            n = n*3 + 1
        }            
        if n&1 == 1 {
            odd_collatz = append(odd_collatz, n)
        }
    }
    sort.Slice(odd_collatz, func(i, j int) bool {
        return odd_collatz[i] < odd_collatz[j]
    })
    return odd_collatz
}
