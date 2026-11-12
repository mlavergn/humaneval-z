func Iscube(a int) bool {
    abs := math.Abs(float64(a))
	return int(math.Pow(math.Round(math.Pow(abs, 1.0/3.0)), 3.0)) == int(abs)
}
