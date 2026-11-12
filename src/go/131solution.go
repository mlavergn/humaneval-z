func Digits(n int) int {
    product := 1
    odd_count := 0
    for _, digit := range strconv.Itoa(n) {
        int_digit := int(digit-'0')
        if int_digit&1 == 1 {
            product= product*int_digit
            odd_count++
        }
    }
    if odd_count==0 {
        return 0
    }
    return product
}
