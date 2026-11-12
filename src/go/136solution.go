func LargestSmallestIntegers(lst []int) [2]interface{}{
    smallest := make([]int, 0)
    largest := make([]int, 0)
    for _, x := range lst {
        if x < 0 {
            smallest = append(smallest, x)
        } else if x > 0 {
            largest = append(largest, x)
        }
    }
    var result [2]interface{}
    if len(smallest) == 0 {
        result[0] = nil
    } else {
        max := smallest[0]
        for i := 1;i < len(smallest);i++ {
            if smallest[i] > max {
                max = smallest[i]
            }
        }
        result[0] = max
    }
    if len(largest) == 0 {
        result[1] = nil
    } else {
        min := largest[0]
        for i := 1;i < len(largest);i++ {
            if largest[i] < min {
                min = largest[i]
            }
        }
        result[1] = min
    }
    return result
}
