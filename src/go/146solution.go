func Specialfilter(nums []int) int {
    count := 0
    for _, num := range nums {
        if num > 10 {
            number_as_string := strconv.Itoa(num)
            if number_as_string[0]&1==1 && number_as_string[len(number_as_string)-1]&1==1 {
                count++
            }
        }
    }        
    return count
}
