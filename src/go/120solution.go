func Maximum(arr []int, k int) []int {
    if k == 0 {
        return []int{}
    }
    sort.Slice(arr, func(i, j int) bool {
        return arr[i] < arr[j]
    })
    return arr[len(arr)-k:]
}
