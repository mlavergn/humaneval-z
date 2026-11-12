func SortArray(array []int) []int {
    arr := make([]int, len(array))
    copy(arr, array)
    if len(arr) == 0 {
        return arr
    }
    if (arr[0]+arr[len(arr)-1])%2 == 0 {
        sort.Slice(arr, func(i, j int) bool {
            return arr[i] > arr[j]
        })
    } else {
        sort.Slice(arr, func(i, j int) bool {
            return arr[i] < arr[j]
        })
    }
    return arr
}
