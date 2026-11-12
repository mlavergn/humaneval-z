func GetMaxTriples(n int) int {
    A := make([]int, 0)
    for i := 1;i <= n;i++ {
        A = append(A, i*i-i+1)
    }
    ans := 0
    for i := 0;i < n;i++ {
        for j := i + 1;j < n;j++ {
            for k := j + 1;k < n;k++ {
                if (A[i]+A[j]+A[k])%3 == 0 {
                    ans++
                }
            }
        }
    }
    return ans
}
