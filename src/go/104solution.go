func UniqueDigits(x []int) []int {
    odd_digit_elements := make([]int, 0)
    OUTER:
    for _, i := range x {
        for _, c := range strconv.Itoa(i) {
            if (c - '0') % 2 == 0 {
                continue OUTER
            }
        }
            odd_digit_elements = append(odd_digit_elements, i)
    }
    sort.Slice(odd_digit_elements, func(i, j int) bool {
        return odd_digit_elements[i] < odd_digit_elements[j]
    })
    return odd_digit_elements
}
