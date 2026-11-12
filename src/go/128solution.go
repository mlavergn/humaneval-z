func ProdSigns(arr []int) interface{} {
    if len(arr) == 0 {
        return nil
    }
    cnt := 0
    sum := 0
    for _, i := range arr {
        if i == 0 {
            return 0
        }
        if i < 0 {
            cnt++
        }
        sum += int(math.Abs(float64(i)))
    }

    prod := int(math.Pow(-1, float64(cnt)))
    return prod * sum
}
