func Histogram(test string) map[rune]int {
    dict1 := make(map[rune]int)
    list1 := strings.Fields(test)
    t := 0
    count := func(lst []string, v string) int {
        cnt := 0
        for _, i := range lst {
            if i == v {
                cnt++
            }
        }
        return cnt
    }
    for _, i := range list1 {
        if c := count(list1, i); c>t && i!="" {
            t=c
        }
    }
    if t>0 {
        for _, i := range list1 {
            if count(list1, i)==t {
                dict1[[]rune(i)[0]]=t
            }
        }
    }
    return dict1
}
