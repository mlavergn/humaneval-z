func FindZero(xs []int) float64 {
    begin := -1.0
	end := 1.0
	for Poly(xs, begin)*Poly(xs, end) > 0 {
		begin *= 2
		end *= 2
	}
	for end-begin > 1e-10 {
		center := (begin + end) / 2
		if Poly(xs, center)*Poly(xs, begin) > 0 {
			begin = center
		} else {
			end = center
		}
	}
	return begin
}
