func ChangeBase(x int, base int) string {
    if x >= base {
        return ChangeBase(x/base, base) + ChangeBase(x%base, base)
    }
    return strconv.Itoa(x)
}
