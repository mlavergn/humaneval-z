func SortedListSum(lst []string) []string {
    sort.SliceStable(lst, func(i, j int) bool {
        return lst[i] < lst[j]
    })
    new_lst := make([]string, 0)
    for _, i := range lst {
        if len(i)&1==0 {
            new_lst = append(new_lst, i)
        }
    }
    sort.SliceStable(new_lst, func(i, j int) bool {
        return len(new_lst[i]) < len(new_lst[j])
    })
    return new_lst
}
