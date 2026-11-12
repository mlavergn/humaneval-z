func CheckDictCase(dict map[interface{}]interface{}) bool {
    if len(dict) == 0 {
        return false
    }
    state := "start"
    key := ""
    ok := false
    for k := range dict {
        if key, ok = k.(string); !ok {
            state = "mixed"
            break
        }
        if state == "start" {
            if key == strings.ToUpper(key) {
                state = "upper"
            } else if key == strings.ToLower(key) {
                state = "lower"
            } else {
                break
            }
        } else if (state == "upper" && key != strings.ToUpper(key)) || (state == "lower" && key != strings.ToLower(key)) {
            state = "mixed"
            break
        } else {
            break
        }
    }
    return state == "upper" || state == "lower"
}
