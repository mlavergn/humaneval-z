func Solution(lst []int) int {
    sum:=0
    for i, x := range lst {
        if i&1==0&&x&1==1 {
            sum+=x
        }
    }
    return sum
}
