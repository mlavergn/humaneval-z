func FilterIntegers(values []interface{}) []int {
    result := make([]int, 0)
    for _, val := range values {
        switch i := val.(type) {
        case int:
            result = append(result, i)
        }
    }
    return result
}
