func ValidDate(date string) bool {
    isInArray := func(arr []int, i int) bool {
        for _, x := range arr {
            if i == x {
                return true
            }
        }
        return false
    }

    date = strings.TrimSpace(date)
    split := strings.SplitN(date, "-", 3)
    if len(split) != 3 {
        return false
    }
    month, err := strconv.Atoi(split[0])
    if err != nil {
        return false
    }
    day, err := strconv.Atoi(split[1])
    if err != nil {
        return false
    }
    _, err = strconv.Atoi(split[2])
    if err != nil {
        return false
    }
    if month < 1 || month > 12 {
        return false
    }
    
    if isInArray([]int{1,3,5,7,8,10,12}, month) && day < 1 || day > 31 {
        return false
    }
    if isInArray([]int{4,6,9,11}, month) && day < 1 || day > 30 {
        return false
    }
    if month == 2 && day < 1 || day > 29 {
        return false
    }

    return true
}
