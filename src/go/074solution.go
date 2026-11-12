func TotalMatch(lst1 []string,lst2 []string) []string {
    var numchar1 = 0
	var numchar2 = 0
	for _, item := range lst1 {
		numchar1 += len(item)
	}
	for _, item := range lst2 {
		numchar2 += len(item)
	}
	if numchar1 <= numchar2 {
		return lst1
	} else {
		return lst2
	}
}
