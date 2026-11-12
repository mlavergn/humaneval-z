func Concatenate(strings []string) string {
    if len(strings) == 0 {
		return ""
	}
	return strings[0] + Concatenate(strings[1:])
}
