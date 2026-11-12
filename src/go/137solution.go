func CompareOne(a, b interface{}) interface{} {
    temp_a := fmt.Sprintf("%v", a)
    temp_b := fmt.Sprintf("%v", b)
    temp_a = strings.ReplaceAll(temp_a, ",", ".")
    temp_b = strings.ReplaceAll(temp_b, ",", ".")
    fa, _ := strconv.ParseFloat(temp_a, 64)
    fb, _ := strconv.ParseFloat(temp_b, 64)
    
    if fa == fb {
        return nil
    }
    if fa > fb {
        return a
    } else {
        return b
    }
}
