func Unique(l []int) []int {
    set := make(map[int]interface{})
	for _, i := range l {
		set[i]=nil
	}
	l = make([]int,0)
	for i, _ := range set {
		l = append(l, i)
	}
	sort.Ints(l)
	return l
}
