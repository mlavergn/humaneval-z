func ByLength(arr []int)[]string {
    dic := map[int]string{
        1: "One",
        2: "Two",
        3: "Three",
        4: "Four",
        5: "Five",
        6: "Six",
        7: "Seven",
        8: "Eight",
        9: "Nine",
    }
    sort.Slice(arr, func(i, j int) bool {
        return arr[i] > arr[j]
    })
    new_arr := make([]string, 0)
    for _, item := range arr {
        if v, ok := dic[item]; ok {
            new_arr = append(new_arr, v)
        }
    }
    return new_arr
}
