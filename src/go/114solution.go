func Minsubarraysum(nums []int) int {
    max_sum := 0
    s := 0
    for _, num := range nums {
        s += -num
        if s < 0 {
            s = 0
        }
        if s > max_sum {
            max_sum = s
        }
    }
    if max_sum == 0 {
        max_sum = math.MinInt
        for _, i := range nums {
            if -i > max_sum {
                max_sum = -i
            }
        }
    }
    return -max_sum
}
