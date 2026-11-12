func RemoveVowels(text string) string {
    
    var re = regexp.MustCompile("[aeiouAEIOU]")
	text = re.ReplaceAllString(text, "")
	return text
}
