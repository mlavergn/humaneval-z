func MoveOneBall(arr []int) bool {
    if len(arr)==0 {
      return true
    }
    sorted_array := make([]int, len(arr))
    copy(sorted_array, arr)
    sort.Slice(sorted_array, func(i, j int) bool {
        return sorted_array[i] < sorted_array[j]
    })    
    min_value := math.MaxInt
    min_index := -1
    for i, x := range arr {
        if i < min_value {
            min_index, min_value = i, x
        }
    }
    my_arr := make([]int, len(arr[min_index:]))
    copy(my_arr, arr[min_index:])
    my_arr = append(my_arr, arr[0:min_index]...)
    for i :=0;i<len(arr);i++ {
      if my_arr[i]!=sorted_array[i]{
        return false
      }
    }
    return true
}
