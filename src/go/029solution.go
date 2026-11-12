func FilterByPrefix(strings []string,prefix string) []string {
    if len(strings) == 0 {
        return []string{}
    }
    res := make([]string, 0, len(strings))
	for _, s := range strings {
		if s[:len(prefix)] == prefix {
			res = append(res, s)
		}
	}
	return res
}
