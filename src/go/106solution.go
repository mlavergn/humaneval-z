func F(n int) []int {
    ret := make([]int, 0, 5)
    for i:=1;i<n+1;i++{
        if i%2 == 0 {
            x := 1
            for j:=1;j<i+1;j++{
                x*=j
            }
            ret = append(ret, x)
        }else {
            x := 0
            for j:=1;j<i+1;j++{
                x+=j
            }
            ret = append(ret, x)
        }
    }
    return ret
}
