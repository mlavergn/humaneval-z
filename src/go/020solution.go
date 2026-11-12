func FindClosestElements(numbers []float64) [2]float64 {
    distance := math.MaxFloat64
	var closestPair [2]float64
	for idx, elem := range numbers {
		for idx2, elem2 := range numbers {
			if idx != idx2 {
				if distance == math.MinInt64 {
					distance = math.Abs(elem - elem2)
					float64s := []float64{elem, elem2}
					sort.Float64s(float64s)
					closestPair = [2]float64{float64s[0], float64s[1]}
				} else {
					newDistance := math.Abs(elem - elem2)
					if newDistance < distance{
						distance = newDistance
						float64s := []float64{elem, elem2}
						sort.Float64s(float64s)
						closestPair = [2]float64{float64s[0], float64s[1]}
					}
				}
			}
		}
	}
	return closestPair
}
