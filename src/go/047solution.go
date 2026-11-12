func Median(l []int) float64 {
    sort.Ints(l)
	if len(l)%2==1{
		return float64(l[len(l)/2])
	}else{
		return float64(l[len(l)/2-1]+l[len(l)/2])/2.0
	}
}
