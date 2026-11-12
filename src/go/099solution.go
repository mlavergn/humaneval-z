func ClosestInteger(value string) int {
    if strings.Count(value, ".") == 1 {
        // remove trailing zeros
        for value[len(value)-1] == '0' {
            value = value[:len(value)-1]
        }
    }
    var res float64
    num, _ := strconv.ParseFloat(value, 64)
    if len(value) >= 2 && value[len(value)-2:] == ".5" {
        if num > 0 {
            res = math.Ceil(num)
        } else {
            res = math.Floor(num)
        }
    } else if len(value) > 0 {
        res = math.Round(num)
    } else {
        res = 0
    }

    return int(res)
}
