func NextSmallest(lst []int) interface{} {
    set := make(map[int]struct{})
    for _, i := range lst {
        set[i] = struct{}{}
    }
    vals := make([]int, 0, len(set))
    for k := range set {
        vals = append(vals, k)
    }
    sort.Slice(vals, func(i, j int) bool {
        return vals[i] < vals[j]
    })
    if len(vals) < 2 {
        return nil
    }
    return vals[1]
}
