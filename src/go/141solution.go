func FileNameCheck(file_name string) string {
    suf := []string{"txt", "exe", "dll"}
    lst := strings.Split(file_name, ".")
    isInArray := func (arr []string, x string) bool {
        for _, y := range arr {
            if x == y {
                return true
            }
        }
        return false
    }
    switch {
    case len(lst) != 2:
        return "No"
    case !isInArray(suf, lst[1]):
        return "No"
    case len(lst[0]) == 0:
        return "No"
    case 'a' > strings.ToLower(lst[0])[0] || strings.ToLower(lst[0])[0] > 'z':
        return "No"
    }
    t := 0
    for _, c := range lst[0] {
        if '0' <= c && c <= '9' {
            t++
        }
    }
    if t > 3 {
        return "No"
    }
    return "Yes"
}
