func StrongestExtension(class_name string, extensions []string) string {
    strong := extensions[0]
    
    my_val := math.MinInt
    for _, s := range extensions {
        cnt0, cnt1 := 0, 0
        for _, c := range s {
            switch {
            case 'A' <= c && c <= 'Z':
                cnt0++
            case 'a' <= c && c <= 'z':
                cnt1++
            }
        }
        val := cnt0-cnt1
        if val > my_val {
            strong = s
            my_val = val
        }
    }
    return class_name + "." + strong
}
